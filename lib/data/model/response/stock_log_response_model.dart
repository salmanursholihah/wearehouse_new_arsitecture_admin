import 'dart:convert';

class StockLogListResponseModel {
  final bool success;
  final StockLogPagination? data;

  StockLogListResponseModel({required this.success, this.data});

  factory StockLogListResponseModel.fromJson(String str) =>
      StockLogListResponseModel.fromMap(jsonDecode(str));

  factory StockLogListResponseModel.fromMap(Map<String, dynamic> json) {
    return StockLogListResponseModel(
      success: json['success'] == true,
      data: json['data'] == null ? null : StockLogPagination.fromMap(json['data']),
    );
  }
}

class StockLogDetailResponseModel {
  final bool success;
  final String? message;
  final StockLogModel? data;

  StockLogDetailResponseModel({required this.success, this.message, this.data});

  factory StockLogDetailResponseModel.fromJson(String str) =>
      StockLogDetailResponseModel.fromMap(jsonDecode(str));

  factory StockLogDetailResponseModel.fromMap(Map<String, dynamic> json) {
    return StockLogDetailResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'] == null ? null : StockLogModel.fromMap(json['data']),
    );
  }
}

class ActionResponseModel {
  final bool success;
  final String? message;
  final dynamic data;

  ActionResponseModel({required this.success, this.message, this.data});

  factory ActionResponseModel.fromJson(String str) =>
      ActionResponseModel.fromMap(jsonDecode(str));

  factory ActionResponseModel.fromMap(Map<String, dynamic> json) {
    return ActionResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'],
    );
  }
}

class StockLogPagination {
  final int currentPage;
  final List<StockLogModel> data;
  final int lastPage;
  final int perPage;
  final int total;

  StockLogPagination({
    required this.currentPage,
    required this.data,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  factory StockLogPagination.fromMap(Map<String, dynamic> json) {
    final list = (json['data'] as List? ?? [])
        .map((e) => StockLogModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return StockLogPagination(
      currentPage: (json['current_page'] ?? 1) as int,
      data: list,
      lastPage: (json['last_page'] ?? 1) as int,
      perPage: (json['per_page'] ?? 10) as int,
      total: (json['total'] ?? 0) as int,
    );
  }

  bool get canLoadMore => currentPage < lastPage;
}

class StockLogModel {
  final int? id;
  final String? type; // in|out
  final int? qty;
  final int? beforeStock;
  final int? afterStock;
  final String? note;
  final String? createdAt;

  final ProductMiniModel? product;
  final UserMiniModel? user;

  StockLogModel({
    this.id,
    this.type,
    this.qty,
    this.beforeStock,
    this.afterStock,
    this.note,
    this.createdAt,
    this.product,
    this.user,
  });

  factory StockLogModel.fromMap(Map<String, dynamic> json) {
    return StockLogModel(
      id: json['id'] as int?,
      type: json['type']?.toString(),
      qty: json['qty'] as int?,
      beforeStock: (json['before_stock'] ?? json['stock_before']) as int?,
      afterStock: (json['after_stock'] ?? json['stock_after']) as int?,
      note: json['note']?.toString(),
      createdAt: json['created_at']?.toString(),
      product: json['product'] == null ? null : ProductMiniModel.fromMap(json['product']),
      user: json['user'] == null ? null : UserMiniModel.fromMap(json['user']),
    );
  }

  String get safeType => type ?? '-';
}

class ProductMiniModel {
  final int? id;
  final String? sku;
  final String? name;
  final int? stock;
  final String? unit;

  ProductMiniModel({this.id, this.sku, this.name, this.stock, this.unit});

  factory ProductMiniModel.fromMap(Map<String, dynamic> json) {
    return ProductMiniModel(
      id: json['id'] as int?,
      sku: json['sku']?.toString(),
      name: json['name']?.toString(),
      stock: json['stock'] as int?,
      unit: json['unit']?.toString(),
    );
  }
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