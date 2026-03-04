import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/stock_in_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/stock_out_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/stock_log_response_model.dart';

import '../../../core/constants/variables.dart';

class StockRemoteDatasource {
  /// sesuai route kamu:
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

  Future<Either<String, StockLogListResponseModel>> getLogs({
    String? type, // in|out
    String? search,
    int? productId,
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      final qp = <String, String>{
        'page': page.toString(),
        'per_page': perPage.toString(),
        if (type != null && type.isNotEmpty) 'type': type,
        if (search != null && search.isNotEmpty) 'search': search,
        if (productId != null) 'product_id': productId.toString(),
      };

      final url = Uri.parse('${Variables.baseUrl}$basePath/stock-logs')
          .replace(queryParameters: qp);

      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(StockLogListResponseModel.fromJson(res.body));
      }
      return Left('getLogs failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, StockLogDetailResponseModel>> showLog(int id) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/stock-logs/$id');
      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(StockLogDetailResponseModel.fromJson(res.body));
      }
      return Left('showLog failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> stockIn(StockInRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/stock/in');
      final res = await http.post(url,
          headers: await _headersAuthJson(), body: jsonEncode(req.toJson()));

      if (res.statusCode == 201 || res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('stockIn failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> stockOut(StockOutRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/stock/out');
      final res = await http.post(url,
          headers: await _headersAuthJson(), body: jsonEncode(req.toJson()));

      if (res.statusCode == 201 || res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('stockOut failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }
}