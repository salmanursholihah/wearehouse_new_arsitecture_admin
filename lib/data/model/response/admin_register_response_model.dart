import 'dart:convert';

import 'admin_user_model.dart';

class AdminRegisterResponseModel {
  final bool? success;
  final String? message;
  final AdminUserModel? data;

  AdminRegisterResponseModel({
    this.success,
    this.message,
    this.data,
  });

  factory AdminRegisterResponseModel.fromRawJson(String str) =>
      AdminRegisterResponseModel.fromMap(json.decode(str));

  factory AdminRegisterResponseModel.fromMap(Map<String, dynamic> json) =>
      AdminRegisterResponseModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : AdminUserModel.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": data?.toMap(),
      };
}