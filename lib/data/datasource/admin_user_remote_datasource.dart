import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_user_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_user_response_model.dart';

import '../../../core/constants/variables.dart';

class AdminUserRemoteDatasource {
  Future<Map<String, String>> _headers() async {
    final token = await AdminAuthLocalDatasource().getToken();
    return {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${token ?? ''}',
    };
  }

  // GET /api/admin/users?per_page=10 (paginate)
  Future<Either<String, AdminUserPaginateResponseModel>> getUsers({
    int perPage = 10,
    int page = 1,
  }) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/admin/users')
          .replace(queryParameters: {
        'per_page': perPage.toString(),
        'page': page.toString(),
      });

      final response = await http.get(url, headers: await _headers());

      if (response.statusCode == 200) {
        return Right(AdminUserPaginateResponseModel.fromJson(response.body));
      }
      return Left('getUsers failed (${response.statusCode}): ${response.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  // GET /api/admin/users/{id}
  Future<Either<String, AdminUserDetailResponseModel>> getUserDetail(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/admin/users/$id');
      final response = await http.get(url, headers: await _headers());

      if (response.statusCode == 200) {
        return Right(AdminUserDetailResponseModel.fromJson(response.body));
      }
      return Left('getUserDetail failed (${response.statusCode}): ${response.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  // PUT /api/admin/users/{id}
  Future<Either<String, AdminUserActionResponseModel>> updateUser(
    int id,
    AdminUserUpdateRequestModel request,
  ) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/admin/users/$id');
      final response = await http.put(
        url,
        headers: await _headers(),
        body: request.toJson(),
      );

      if (response.statusCode == 200) {
        return Right(AdminUserActionResponseModel.fromJson(response.body));
      }
      return Left('updateUser failed (${response.statusCode}): ${response.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  // PUT /api/admin/users/{id}/activate
  Future<Either<String, AdminUserActionResponseModel>> activate(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/admin/users/$id/activate');
      final response = await http.put(url, headers: await _headers());

      if (response.statusCode == 200) {
        return Right(AdminUserActionResponseModel.fromJson(response.body));
      }
      return Left('activate failed (${response.statusCode}): ${response.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  // PUT /api/admin/users/{id}/deactivate
  Future<Either<String, AdminUserActionResponseModel>> deactivate(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/admin/users/$id/deactivate');
      final response = await http.put(url, headers: await _headers());

      if (response.statusCode == 200) {
        return Right(AdminUserActionResponseModel.fromJson(response.body));
      }
      return Left('deactivate failed (${response.statusCode}): ${response.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }
}