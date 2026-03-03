import 'dart:convert';

class AdminUserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? role;
  final String? phone;
  final String? address;
  final String? image;
  final int? isActive;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  AdminUserModel({
    this.id,
    this.name,
    this.email,
    this.role,
    this.phone,
    this.address,
    this.image,
    this.isActive,
    this.createdAt,
    this.updatedAt,
  });

  factory AdminUserModel.fromRawJson(String str) =>
      AdminUserModel.fromMap(json.decode(str));

  factory AdminUserModel.fromMap(Map<String, dynamic> json) => AdminUserModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        phone: json["phone"],
        address: json["address"],
        image: json["image"],
        isActive: json["is_active"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.tryParse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.tryParse(json["updated_at"]),
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
        "updated_at": updatedAt?.toIso8601String(),
      };
}