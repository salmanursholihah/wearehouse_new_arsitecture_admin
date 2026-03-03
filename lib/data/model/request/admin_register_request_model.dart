import 'dart:convert';

class AdminRegisterRequestModel {
  final String name;
  final String email;
  final String password;
  final String? phone;
  final String? address;
  final String? role; // admin | super_admin (nullable)

  AdminRegisterRequestModel({
    required this.name,
    required this.email,
    required this.password,
    this.phone,
    this.address,
    this.role,
  });

  Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "password": password,
        "phone": phone,
        "address": address,
        "role": role,
      };

  String toJson() => json.encode(toMap());
}