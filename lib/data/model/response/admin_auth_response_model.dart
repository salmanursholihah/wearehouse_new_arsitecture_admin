import 'dart:convert';

class AdminAuthResponseModel {
  final bool? success;
  final String? message;
  final AdminAuthData? data;

  AdminAuthResponseModel({this.success, this.message, this.data});

  factory AdminAuthResponseModel.fromRawJson(String str) =>
      AdminAuthResponseModel.fromMap(jsonDecode(str));

  String toRawJson() => jsonEncode(toMap());

  factory AdminAuthResponseModel.fromMap(Map<String, dynamic> json) =>
      AdminAuthResponseModel(
        success: json["success"],
        message: json["message"],
        data: json["data"] == null ? null : AdminAuthData.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
        "data": data?.toMap(),
      };
}

class AdminAuthData {
  final String? token;
  final AdminModel? user;

  AdminAuthData({this.token, this.user});

  factory AdminAuthData.fromMap(Map<String, dynamic> json) => AdminAuthData(
        token: json["token"],
        user: json["user"] == null ? null : AdminModel.fromMap(json["user"]),
      );

  Map<String, dynamic> toMap() => {
        "token": token,
        "user": user?.toMap(),
      };
}

class AdminModel {
  final int? id;
  final String? name;
  final String? email;
  final String? role;
  final String? phone;
  final String? address;
  final String? image;
  final bool? isActive;
  final DateTime? createdAt;

  AdminModel({
    this.id,
    this.name,
    this.email,
    this.role,
    this.phone,
    this.address,
    this.image,
    this.isActive,
    this.createdAt,
  });

  factory AdminModel.fromMap(Map<String, dynamic> json) => AdminModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        phone: json["phone"],
        address: json["address"],
        image: json["image"],
        isActive: json["is_active"] is bool ? json["is_active"] : (json["is_active"] == 1),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.tryParse(json["created_at"].toString()),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "role": role,
        "phone": phone,
        "address": address,
        "image": image,
        "is_active": isActive,
        "created_at": createdAt?.toIso8601String(),
      };
}