import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_create_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_product_response_model.dart';

import '../../../core/constants/variables.dart';

class AdminProductRemoteDatasource {
  /// GANTI sesuai route kamu:
  /// - kalau benar prefix user: '/api/user'
  /// - kalau admin: '/api/admin'
  static const String basePath = '/api/user';

  Future<Map<String, String>> _headersAuthJson() async {
    final token = await AdminAuthLocalDatasource().getToken();
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token ?? ''}',
    };
  }

  Future<Map<String, String>> _headersAuth() async {
    final token = await AdminAuthLocalDatasource().getToken();
    return {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${token ?? ''}',
    };
  }

  Future<Either<String, AdminProductListResponseModel>> index({
    String? status,
    String? search,
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      final qp = <String, String>{
        'page': page.toString(),
        'per_page': perPage.toString(),
        if (status != null && status.isNotEmpty) 'status': status,
        if (search != null && search.isNotEmpty) 'search': search,
      };

      final url = Uri.parse('${Variables.baseUrl}$basePath/products').replace(queryParameters: qp);

      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminProductListResponseModel.fromJson(res.body));
      }
      return Left('index failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminProductDetailResponseModel>> show(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products/$id');
      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminProductDetailResponseModel.fromJson(res.body));
      }
      return Left('show failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminActionResponseModel>> store(ProductCreateRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products');
      final res = await http.post(
        url,
        headers: await _headersAuthJson(),
        body: jsonEncode({
          'sku': req.sku,
          'name': req.name,
          'description': req.description,
          'stock': req.stock,
          'unit': req.unit,
        }),
      );

      if (res.statusCode == 201) {
        return Right(AdminActionResponseModel.fromJson(res.body));
      }
      return Left('store failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminActionResponseModel>> update(int id, ProductUpdateRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products/$id');
      final res = await http.put(
        url,
        headers: await _headersAuthJson(),
        body: jsonEncode(req.toJson()),
      );

      if (res.statusCode == 200) {
        return Right(AdminActionResponseModel.fromJson(res.body));
      }
      return Left('update failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminActionResponseModel>> destroy(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products/$id');
      final res = await http.delete(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminActionResponseModel.fromJson(res.body));
      }
      return Left('destroy failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminActionResponseModel>> approve(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products/$id/approve');
      final res = await http.put(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminActionResponseModel.fromJson(res.body));
      }
      return Left('approve failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminActionResponseModel>> reject(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products/$id/reject');
      final res = await http.put(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminActionResponseModel.fromJson(res.body));
      }
      return Left('reject failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, List<ProductImageModel>>> images(int productId) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products/$productId/images');
      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        final map = jsonDecode(res.body) as Map<String, dynamic>;
        final list = (map['data'] as List? ?? [])
            .map((e) => ProductImageModel.fromMap(e as Map<String, dynamic>))
            .toList();
        return Right(list);
      }
      return Left('images failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  /// POST /products/{id}/images  (multipart)
  Future<Either<String, AdminActionResponseModel>> addImage({
    required int productId,
    required XFile image, // ✅ XFile
  }) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/products/$productId/images');
      final req = http.MultipartRequest('POST', url);

      req.headers.addAll(await _headersAuth());
      req.files.add(await http.MultipartFile.fromPath('image', image.path));

      final streamed = await req.send();
      final bodyStr = await streamed.stream.bytesToString();

      if (streamed.statusCode == 201) {
        return Right(AdminActionResponseModel.fromJson(bodyStr));
      }
      return Left('addImage failed (${streamed.statusCode}): $bodyStr');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminActionResponseModel>> deleteImage(int imageId) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/product-images/$imageId');
      final res = await http.delete(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminActionResponseModel.fromJson(res.body));
      }
      return Left('deleteImage failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }
}