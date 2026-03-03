import 'dart:convert';

class AuthDataModel {
  final String token;

  AuthDataModel({required this.token});

  factory AuthDataModel.fromJson(String str) =>
      AuthDataModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AuthDataModel.fromMap(Map<String, dynamic> json) => AuthDataModel(
        token: json["token"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "token": token,
      };
}