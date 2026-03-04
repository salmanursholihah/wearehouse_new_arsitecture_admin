import 'dart:convert';

class AdminProductListResponseModel {
  final bool success;
  final AdminProductPagination? data;

  AdminProductListResponseModel({required this.success, this.data});

  factory AdminProductListResponseModel.fromJson(String str) =>
      AdminProductListResponseModel.fromMap(jsonDecode(str));

  factory AdminProductListResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminProductListResponseModel(
      success: json['success'] == true,
      data: json['data'] == null
          ? null
          : AdminProductPagination.fromMap(json['data'] as Map<String, dynamic>),
    );
  }
}

class AdminProductDetailResponseModel {
  final bool success;
  final String? message;
  final AdminProductModel? data;

  AdminProductDetailResponseModel({required this.success, this.message, this.data});

  factory AdminProductDetailResponseModel.fromJson(String str) =>
      AdminProductDetailResponseModel.fromMap(jsonDecode(str));

  factory AdminProductDetailResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminProductDetailResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'] == null
          ? null
          : AdminProductModel.fromMap(json['data'] as Map<String, dynamic>),
    );
  }
}

class AdminActionResponseModel {
  final bool success;
  final String? message;
  final dynamic data;

  AdminActionResponseModel({required this.success, this.message, this.data});

  factory AdminActionResponseModel.fromJson(String str) =>
      AdminActionResponseModel.fromMap(jsonDecode(str));

  factory AdminActionResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminActionResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'],
    );
  }
}

class AdminProductPagination {
  final int currentPage;
  final List<AdminProductModel> data;
  final int lastPage;
  final int perPage;
  final int total;

  AdminProductPagination({
    required this.currentPage,
    required this.data,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  factory AdminProductPagination.fromMap(Map<String, dynamic> json) {
    final list = (json['data'] as List? ?? [])
        .map((e) => AdminProductModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return AdminProductPagination(
      currentPage: (json['current_page'] ?? 1) as int,
      data: list,
      lastPage: (json['last_page'] ?? 1) as int,
      perPage: (json['per_page'] ?? 10) as int,
      total: (json['total'] ?? 0) as int,
    );
  }

  bool get canLoadMore => currentPage < lastPage;
}

class AdminProductModel {
  final int? id;
  final String? sku;
  final String? name;
  final String? description;
  final int? stock;
  final String? unit;
  final String? status; // pending|approved|rejected
  final int? createdBy;
  final int? approvedBy;

  final UserMiniModel? creator;
  final UserMiniModel? approver;
  final List<ProductImageModel>? images;

  AdminProductModel({
    this.id,
    this.sku,
    this.name,
    this.description,
    this.stock,
    this.unit,
    this.status,
    this.createdBy,
    this.approvedBy,
    this.creator,
    this.approver,
    this.images,
  });

  factory AdminProductModel.fromMap(Map<String, dynamic> json) {
    final imgs = json['images'];
    return AdminProductModel(
      id: json['id'] as int?,
      sku: json['sku']?.toString(),
      name: json['name']?.toString(),
      description: json['description']?.toString(),
      stock: json['stock'] as int?,
      unit: json['unit']?.toString(),
      status: json['status']?.toString(),
      createdBy: json['created_by'] as int?,
      approvedBy: json['approved_by'] as int?,
      creator: json['creator'] == null
          ? null
          : UserMiniModel.fromMap(json['creator'] as Map<String, dynamic>),
      approver: json['approver'] == null
          ? null
          : UserMiniModel.fromMap(json['approver'] as Map<String, dynamic>),
      images: imgs is List
          ? imgs.map((e) => ProductImageModel.fromMap(e as Map<String, dynamic>)).toList()
          : null,
    );
  }

  String get safeName => (name ?? '').isNotEmpty ? name! : '-';
  String get safeSku => (sku ?? '').isNotEmpty ? sku! : '-';
  String get safeUnit => (unit ?? '').isNotEmpty ? unit! : 'pcs';
  String get safeStatus => status ?? 'pending';
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

class ProductImageModel {
  final int? id;
  final int? productId;
  final String? image;
  final String? imageUrl;
  final String? createdAt;

  ProductImageModel({
    this.id,
    this.productId,
    this.image,
    this.imageUrl,
    this.createdAt,
  });

  factory ProductImageModel.fromMap(Map<String, dynamic> json) {
    return ProductImageModel(
      id: json['id'] as int?,
      productId: json['product_id'] as int?,
      image: json['image']?.toString(),
      imageUrl: json['image_url']?.toString(),
      createdAt: json['created_at']?.toString(),
    );
  }

  String? get bestUrl => imageUrl ?? image;
}