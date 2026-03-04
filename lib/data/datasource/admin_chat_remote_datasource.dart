import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_add_participant_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_create_room_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/chat_send_message_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/about_response_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/chat_response_model.dart' hide ActionResponseModel;

import '../../../core/constants/variables.dart';
class AdminChatRemoteDatasource {
  static const String basePath = '/api/admin/chat';

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

  Future<Either<String, ChatRoomsResponseModel>> rooms() async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/rooms');
      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(ChatRoomsResponseModel.fromJson(res.body));
      }
      return Left('rooms failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ChatRoomResponseModel>> createRoom(ChatCreateRoomRequestModel req) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/rooms');
      final res = await http.post(
        url,
        headers: await _headersAuthJson(),
        body: jsonEncode(req.toJson()),
      );

      if (res.statusCode == 200 || res.statusCode == 201) {
        return Right(ChatRoomResponseModel.fromJson(res.body));
      }
      return Left('createRoom failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ChatMessagesResponseModel>> messages({
    required int roomId,
    int page = 1,
    int perPage = 20,
  }) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/rooms/$roomId/messages')
          .replace(queryParameters: {
        'page': page.toString(),
        'per_page': perPage.toString(),
      });

      final res = await http.get(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(ChatMessagesResponseModel.fromJson(res.body));
      }
      return Left('messages failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> sendMessage({
    required int roomId,
    required ChatSendMessageRequestModel req,
  }) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/rooms/$roomId/messages');
      final res = await http.post(
        url,
        headers: await _headersAuthJson(),
        body: jsonEncode(req.toJson()),
      );

      if (res.statusCode == 201 || res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('sendMessage failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> addParticipant({
    required int roomId,
    required ChatAddParticipantRequestModel req,
  }) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/rooms/$roomId/participants');
      final res = await http.post(
        url,
        headers: await _headersAuthJson(),
        body: jsonEncode(req.toJson()),
      );

      if (res.statusCode == 201 || res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('addParticipant failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  Future<Either<String, ActionResponseModel>> removeParticipant({
    required int roomId,
    required int userId,
  }) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}$basePath/rooms/$roomId/participants/$userId');
      final res = await http.delete(url, headers: await _headersAuth());
      if (res.statusCode == 200) {
        return Right(ActionResponseModel.fromJson(res.body));
      }
      return Left('removeParticipant failed (${res.statusCode}): ${res.body}');
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }
}