import 'dart:convert';

class AdminUserUpdateRequestModel {
  final String name;
  final String? phone;
  final String? address;

  /// API kamu menerima "image" string (path/url).
  /// Karena standar kamu image pakai XFile, maka di UI kita bisa konversi XFile -> base64/string,
  /// lalu isi ke field ini.
  final String? image;

  AdminUserUpdateRequestModel({
    required this.name,
    this.phone,
    this.address,
    this.image,
  });

  String toJson() => jsonEncode({
        "name": name,
        "phone": phone,
        "address": address,
        "image": image,
      });
}