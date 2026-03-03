import 'dart:convert';

class AdminLoginResponseModel {
  final bool? success;
  final String? message;
  final AdminLoginData? data;

  AdminLoginResponseModel({this.success, this.message, this.data});

  factory AdminLoginResponseModel.fromRawJson(String str) =>
      AdminLoginResponseModel.fromMap(json.decode(str));

  factory AdminLoginResponseModel.fromMap(Map<String, dynamic> json) =>
      AdminLoginResponseModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : AdminLoginData.fromMap(json["data"]),
      );
}

class AdminLoginData {
  final String? token;
  final Map<String, dynamic>? user;

  AdminLoginData({this.token, this.user});

  factory AdminLoginData.fromMap(Map<String, dynamic> json) =>
      AdminLoginData(token: json["token"], user: json["user"]);
}
