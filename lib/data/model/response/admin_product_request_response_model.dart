import 'dart:convert';

class AdminProductRequestListResponseModel {
  final bool success;
  final ProductRequestPagination? data;

  AdminProductRequestListResponseModel({required this.success, this.data});

  factory AdminProductRequestListResponseModel.fromJson(String str) =>
      AdminProductRequestListResponseModel.fromMap(jsonDecode(str));

  factory AdminProductRequestListResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminProductRequestListResponseModel(
      success: json['success'] == true,
      data: json['data'] == null ? null : ProductRequestPagination.fromMap(json['data']),
    );
  }
}

class AdminProductRequestDetailResponseModel {
  final bool success;
  final String? message;
  final ProductRequestModel? data;

  AdminProductRequestDetailResponseModel({required this.success, this.message, this.data});

  factory AdminProductRequestDetailResponseModel.fromJson(String str) =>
      AdminProductRequestDetailResponseModel.fromMap(jsonDecode(str));

  factory AdminProductRequestDetailResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminProductRequestDetailResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'] == null ? null : ProductRequestModel.fromMap(json['data']),
    );
  }
}

class ActionResponseModel {
  final bool success;
  final String? message;
  final dynamic data;

  ActionResponseModel({required this.success, this.message, this.data});

  factory ActionResponseModel.fromJson(String str) => ActionResponseModel.fromMap(jsonDecode(str));

  factory ActionResponseModel.fromMap(Map<String, dynamic> json) {
    return ActionResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'],
    );
  }
}

class ProductRequestPagination {
  final int currentPage;
  final List<ProductRequestModel> data;
  final int lastPage;
  final int perPage;
  final int total;

  ProductRequestPagination({
    required this.currentPage,
    required this.data,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  factory ProductRequestPagination.fromMap(Map<String, dynamic> json) {
    final list = (json['data'] as List? ?? [])
        .map((e) => ProductRequestModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return ProductRequestPagination(
      currentPage: (json['current_page'] ?? 1) as int,
      data: list,
      lastPage: (json['last_page'] ?? 1) as int,
      perPage: (json['per_page'] ?? 10) as int,
      total: (json['total'] ?? 0) as int,
    );
  }

  bool get canLoadMore => currentPage < lastPage;
}

class ProductRequestModel {
  final int? id;
  final int? productId;
  final int? userId;
  final int? qty;
  final String? purpose; // maintenance|distributor
  final String? status;  // pending|approved|rejected
  final int? processedById;
  final String? filePath;
  final String? fileUrl; // ditambah di controller
  final String? createdAt;

  final UserMiniModel? user;
  final UserMiniModel? processedBy;
  final ProductMiniModel? product;

  ProductRequestModel({
    this.id,
    this.productId,
    this.userId,
    this.qty,
    this.purpose,
    this.status,
    this.processedById,
    this.filePath,
    this.fileUrl,
    this.createdAt,
    this.user,
    this.processedBy,
    this.product,
  });

  factory ProductRequestModel.fromMap(Map<String, dynamic> json) {
    return ProductRequestModel(
      id: json['id'] as int?,
      productId: json['product_id'] as int?,
      userId: json['user_id'] as int?,
      qty: json['qty'] as int?,
      purpose: json['purpose']?.toString(),
      status: json['status']?.toString(),
      processedById: json['processed_by'] as int?,
      filePath: json['file_path']?.toString(),
      fileUrl: json['file_url']?.toString(),
      createdAt: json['created_at']?.toString(),
      user: json['user'] == null ? null : UserMiniModel.fromMap(json['user']),
      processedBy: json['processed_by'] == null ? null : UserMiniModel.fromMap(json['processed_by']),
      product: json['product'] == null ? null : ProductMiniModel.fromMap(json['product']),
    );
  }

  String get safeStatus => status ?? 'pending';
  String get safePurpose => purpose ?? '-';
}

class UserMiniModel {
  final int? id;
  final String? name;
  final String? email;

  UserMiniModel({this.id, this.name, this.email});

  factory UserMiniModel.fromMap(Map<String, dynamic> json) {
    return UserMiniModel(
      id: json['id'] as int?,
      name: json['name']?.toString(),
      email: json['email']?.toString(),
    );
  }
}

class ProductMiniModel {
  final int? id;
  final String? sku;
  final String? name;
  final int? stock;
  final String? unit;
  final String? status;

  ProductMiniModel({this.id, this.sku, this.name, this.stock, this.unit, this.status});

  factory ProductMiniModel.fromMap(Map<String, dynamic> json) {
    return ProductMiniModel(
      id: json['id'] as int?,
      sku: json['sku']?.toString(),
      name: json['name']?.toString(),
      stock: json['stock'] as int?,
      unit: json['unit']?.toString(),
      status: json['status']?.toString(),
    );
  }
}