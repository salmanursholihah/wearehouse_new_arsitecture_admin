import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_request_response_model.dart';
import '../../core/constants/variables.dart';

class AdminRequestRemoteDatasource {
  Future<Either<String, AdminRequestListResponseModel>> getRequests() async {
    final url = Uri.parse("${Variables.baseUrl}/api/user/requests");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Right(AdminRequestListResponseModel.fromJson(response.body));
    } else {
      return Left("Failed load requests");
    }
  }

  Future<Either<String, RequestModel>> getRequestDetail(int id) async {
    final url = Uri.parse("${Variables.baseUrl}/api/user/requests/$id");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return Right(RequestModel.fromMap(data["data"]));
    } else {
      return Left("Failed load detail");
    }
  }

  Future<Either<String, String>> approve(int id) async {
    final url =
        Uri.parse("${Variables.baseUrl}/api/user/requests/$id/approve");

    final response = await http.put(url);

    if (response.statusCode == 200) {
      return const Right("Request approved");
    } else {
      return const Left("Approve failed");
    }
  }

  Future<Either<String, String>> reject(int id) async {
    final url =
        Uri.parse("${Variables.baseUrl}/api/user/requests/$id/reject");

    final response = await http.put(url);

    if (response.statusCode == 200) {
      return const Right("Request rejected");
    } else {
      return const Left("Reject failed");
    }
  }

  Future<Either<String, String>> markTaken(int id) async {
    final url =
        Uri.parse("${Variables.baseUrl}/api/user/requests/$id/taken");

    final response = await http.put(url);

    if (response.statusCode == 200) {
      return const Right("Request marked taken");
    } else {
      return const Left("Taken failed");
    }
  }
}