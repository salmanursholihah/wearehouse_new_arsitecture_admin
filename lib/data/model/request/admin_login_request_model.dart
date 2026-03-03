import 'dart:convert';

class AdminLoginRequestModel {
  final String email;
  final String password;

  AdminLoginRequestModel({required this.email, required this.password});

  String toJson() => jsonEncode({"email": email, "password": password});
}
