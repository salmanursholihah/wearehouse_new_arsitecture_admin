import 'dart:convert';

import 'admin_user_model.dart';

class AdminMeResponseModel {
  final bool? success;
  final AdminUserModel? data;

  AdminMeResponseModel({
    this.success,
    this.data,
  });

  factory AdminMeResponseModel.fromRawJson(String str) =>
      AdminMeResponseModel.fromMap(json.decode(str));

  factory AdminMeResponseModel.fromMap(Map<String, dynamic> json) =>
      AdminMeResponseModel(
        success: json["success"],
        data: json["data"] == null ? null : AdminUserModel.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "data": data?.toMap(),
      };
}