import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import 'package:image_picker/image_picker.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/about_create_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/about_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/about_response_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_product_request_response_model.dart' hide ActionResponseModel;
import '../../../core/constants/variables.dart';

class AdminAboutRemoteDatasource {
  /// sesuai route kamu (prefix user)
  static const String basePath = '/api/user';

  Future<Map<String, String>> _headersAuth() async {
    final token = await AdminAuthLocalDatasource().getToken();
    return {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${token ?? ''}',
    };
  }

  Future<Either<String, AboutListResponseModel>> index() async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/about');
      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AboutListResponseModel.fromJson(res.body));
      }
      return Left('index failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, AboutDetailResponseModel>> show(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/about/$id');
      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(AboutDetailResponseModel.fromJson(res.body));
      }
      return Left('show failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> store(AboutCreateRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/about');
      final request = http.MultipartRequest('POST', url);
      request.headers.addAll(await _headersAuth());

      request.fields['title'] = req.title;
      request.fields['content'] = req.content;

      if (req.image != null) {
        request.files.add(
          await http.MultipartFile.fromPath('image', req.image!.path),
        );
      }

      final streamed = await request.send();
      final body = await streamed.stream.bytesToString();

      if (streamed.statusCode == 201) {
        return Right(ActionResponseModel.fromJson(body));
      }
      return Left('store failed (${streamed.statusCode}): $body');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> update(int id, AboutUpdateRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/about/$id');
      final request = http.MultipartRequest('POST', url);
      request.headers.addAll(await _headersAuth());

      /// Laravel biasanya butuh spoof method PUT untuk multipart
      request.fields['_method'] = 'PUT';
      request.fields['title'] = req.title;
      request.fields['content'] = req.content;

      if (req.image != null) {
        request.files.add(
          await http.MultipartFile.fromPath('image', req.image!.path),
        );
      }

      final streamed = await request.send();
      final body = await streamed.stream.bytesToString();

      if (streamed.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(body));
      }
      return Left('update failed (${streamed.statusCode}): $body');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> destroy(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/about/$id');
      final res = await http.delete(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('destroy failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }
}