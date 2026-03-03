import 'dart:convert';

import 'admin_user_model.dart';

class AdminUserActionResponseModel {
  final bool? success;
  final String? message;
  final AdminUserModel? data;

  AdminUserActionResponseModel({
    this.success,
    this.message,
    this.data,
  });

  factory AdminUserActionResponseModel.fromRawJson(String str) =>
      AdminUserActionResponseModel.fromMap(json.decode(str));

  factory AdminUserActionResponseModel.fromMap(Map<String, dynamic> json) =>
      AdminUserActionResponseModel(
        success: json["success"],
        message: json["message"],
        data:
            json["data"] == null ? null : AdminUserModel.fromMap(json["data"]),
      );
}