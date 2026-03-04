import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_request_reject_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_product_request_response_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/stock_log_response_model.dart' hide ActionResponseModel;

import '../../../core/constants/variables.dart';

class AdminProductRequestRemoteDatasource {
  static const String basePath = '/api/user';

  Future<Map<String, String>> _headersAuth() async {
    final token = await AdminAuthLocalDatasource().getToken();
    return {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${token ?? ''}',
    };
  }

  Future<Map<String, String>> _headersAuthJson() async {
    final h = await _headersAuth();
    return {...h, 'Content-Type': 'application/json'};
  }

  Future<Either<String, AdminProductRequestListResponseModel>> index({
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

      final url = Uri.parse('${Variables.baseUrl}$basePath/product-requests')
          .replace(queryParameters: qp);

      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminProductRequestListResponseModel.fromJson(res.body));
      }
      return Left('index failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AdminProductRequestDetailResponseModel>> show(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/product-requests/$id');
      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AdminProductRequestDetailResponseModel.fromJson(res.body));
      }
      return Left('show failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> approve(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/product-requests/$id/approve');
      final res = await http.put(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('approve failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> reject(int id, ProductRequestRejectRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/product-requests/$id/reject');
      final res = await http.put(
        url,
        headers: await _headersAuthJson(),
        body: jsonEncode(req.toJson()),
      );
      if (res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('reject failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }
}