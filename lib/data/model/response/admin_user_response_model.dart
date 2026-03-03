import 'dart:convert';

class AdminUserPaginateResponseModel {
  final bool success;
  final AdminUserPagination? data;

  AdminUserPaginateResponseModel({
    required this.success,
    this.data,
  });

  factory AdminUserPaginateResponseModel.fromJson(String str) =>
      AdminUserPaginateResponseModel.fromMap(jsonDecode(str));

  factory AdminUserPaginateResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminUserPaginateResponseModel(
      success: json['success'] == true,
      data: json['data'] == null
          ? null
          : AdminUserPagination.fromMap(json['data'] as Map<String, dynamic>),
    );
  }
}

class AdminUserDetailResponseModel {
  final bool success;
  final String? message;
  final AdminUserModel? data;

  AdminUserDetailResponseModel({
    required this.success,
    this.message,
    this.data,
  });

  factory AdminUserDetailResponseModel.fromJson(String str) =>
      AdminUserDetailResponseModel.fromMap(jsonDecode(str));

  factory AdminUserDetailResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminUserDetailResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'] == null
          ? null
          : AdminUserModel.fromMap(json['data'] as Map<String, dynamic>),
    );
  }
}

class AdminUserActionResponseModel {
  final bool success;
  final String? message;
  final AdminUserModel? data;

  AdminUserActionResponseModel({
    required this.success,
    this.message,
    this.data,
  });

  factory AdminUserActionResponseModel.fromJson(String str) =>
      AdminUserActionResponseModel.fromMap(jsonDecode(str));

  factory AdminUserActionResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminUserActionResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'] == null
          ? null
          : AdminUserModel.fromMap(json['data'] as Map<String, dynamic>),
    );
  }
}

class AdminUserPagination {
  final int currentPage;
  final List<AdminUserModel> data;
  final int lastPage;
  final int perPage;
  final int total;

  AdminUserPagination({
    required this.currentPage,
    required this.data,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  factory AdminUserPagination.fromMap(Map<String, dynamic> json) {
    final list = (json['data'] as List? ?? [])
        .map((e) => AdminUserModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return AdminUserPagination(
      currentPage: (json['current_page'] ?? 1) as int,
      data: list,
      lastPage: (json['last_page'] ?? 1) as int,
      perPage: (json['per_page'] ?? 10) as int,
      total: (json['total'] ?? 0) as int,
    );
  }

  bool get canLoadMore => currentPage < lastPage;
}

class AdminUserModel {
  final int? id;
  final String? name;
  final String? email;
  final String? role;
  final String? phone;
  final String? address;
  final String? image;
  final int? isActive;
  final String? createdAt;

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
  });

  factory AdminUserModel.fromMap(Map<String, dynamic> json) {
    return AdminUserModel(
      id: json['id'] as int?,
      name: json['name']?.toString(),
      email: json['email']?.toString(),
      role: json['role']?.toString(),
      phone: json['phone']?.toString(),
      address: json['address']?.toString(),
      image: json['image']?.toString(),
      isActive: json['is_active'] is int
          ? json['is_active'] as int
          : (json['is_active'] == true ? 1 : 0),
      createdAt: json['created_at']?.toString(),
    );
  }

  bool get active => (isActive ?? 0) == 1;
  String get safeName => (name ?? '').isNotEmpty ? name! : 'Tanpa Nama';
  String get safeEmail => (email ?? '').isNotEmpty ? email! : '-';
}