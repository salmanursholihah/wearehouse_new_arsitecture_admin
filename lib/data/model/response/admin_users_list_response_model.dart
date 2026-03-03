import 'dart:convert';

import 'admin_user_model.dart';
import 'pagination_meta_model.dart';

class AdminUsersListResponseModel {
  final bool? success;
  final AdminUsersPaginatedData? data;

  AdminUsersListResponseModel({
    this.success,
    this.data,
  });

  factory AdminUsersListResponseModel.fromRawJson(String str) =>
      AdminUsersListResponseModel.fromMap(json.decode(str));

  factory AdminUsersListResponseModel.fromMap(Map<String, dynamic> json) =>
      AdminUsersListResponseModel(
        success: json["success"],
        data: json["data"] == null
            ? null
            : AdminUsersPaginatedData.fromMap(json["data"]),
      );
}

class AdminUsersPaginatedData {
  final List<AdminUserModel> users;
  final PaginationMetaModel meta;

  AdminUsersPaginatedData({
    required this.users,
    required this.meta,
  });

  factory AdminUsersPaginatedData.fromMap(Map<String, dynamic> json) {
    final list = (json["data"] as List? ?? [])
        .map((e) => AdminUserModel.fromMap(e))
        .toList();

    final meta = PaginationMetaModel.fromMap(json);

    return AdminUsersPaginatedData(users: list, meta: meta);
  }
}