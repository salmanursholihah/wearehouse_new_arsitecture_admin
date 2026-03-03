import 'dart:convert';

import 'admin_user_model.dart';

class AdminUserDetailResponseModel {
  final bool? success;
  final String? message;
  final AdminUserModel? data;

  AdminUserDetailResponseModel({
    this.success,
    this.message,
    this.data,
  });

  factory AdminUserDetailResponseModel.fromRawJson(String str) =>
      AdminUserDetailResponseModel.fromMap(json.decode(str));

  factory AdminUserDetailResponseModel.fromMap(Map<String, dynamic> json) =>
      AdminUserDetailResponseModel(
        success: json["success"],
        message: json["message"],
        data:
            json["data"] == null ? null : AdminUserModel.fromMap(json["data"]),
      );
}