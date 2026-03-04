import 'dart:convert';

class AdminRequestListResponseModel {
  final bool success;
  final RequestPagination? data;

  AdminRequestListResponseModel({
    required this.success,
    this.data,
  });

  factory AdminRequestListResponseModel.fromJson(String str) =>
      AdminRequestListResponseModel.fromMap(jsonDecode(str));

  factory AdminRequestListResponseModel.fromMap(Map<String, dynamic> json) {
    return AdminRequestListResponseModel(
      success: json["success"],
      data: json["data"] == null
          ? null
          : RequestPagination.fromMap(json["data"]),
    );
  }
}

class RequestPagination {
  final int currentPage;
  final List<RequestModel> data;
  final int lastPage;

  RequestPagination({
    required this.currentPage,
    required this.data,
    required this.lastPage,
  });

  factory RequestPagination.fromMap(Map<String, dynamic> json) {
    return RequestPagination(
      currentPage: json["current_page"],
      lastPage: json["last_page"],
      data: List<RequestModel>.from(
        json["data"].map((x) => RequestModel.fromMap(x)),
      ),
    );
  }
}

class RequestModel {
  final int id;
  final String status;
  final int itemsCount;
  final UserMiniModel? user;
  final UserMiniModel? processedBy;
  final List<RequestItemModel>? items;

  RequestModel({
    required this.id,
    required this.status,
    required this.itemsCount,
    this.user,
    this.processedBy,
    this.items,
  });

  factory RequestModel.fromMap(Map<String, dynamic> json) {
    return RequestModel(
      id: json["id"],
      status: json["status"],
      itemsCount: json["items_count"] ?? 0,
      user:
          json["user"] == null ? null : UserMiniModel.fromMap(json["user"]),
      processedBy: json["processed_by"] == null
          ? null
          : UserMiniModel.fromMap(json["processed_by"]),
      items: json["items"] == null
          ? null
          : List<RequestItemModel>.from(
              json["items"].map((x) => RequestItemModel.fromMap(x)),
            ),
    );
  }
}

class RequestItemModel {
  final int id;
  final int qty;
  final ProductMiniModel? product;

  RequestItemModel({
    required this.id,
    required this.qty,
    this.product,
  });

  factory RequestItemModel.fromMap(Map<String, dynamic> json) {
    return RequestItemModel(
      id: json["id"],
      qty: json["qty"],
      product: json["product"] == null
          ? null
          : ProductMiniModel.fromMap(json["product"]),
    );
  }
}

class ProductMiniModel {
  final int id;
  final String name;
  final String sku;
  final int stock;
  final String unit;

  ProductMiniModel({
    required this.id,
    required this.name,
    required this.sku,
    required this.stock,
    required this.unit,
  });

  factory ProductMiniModel.fromMap(Map<String, dynamic> json) {
    return ProductMiniModel(
      id: json["id"],
      name: json["name"],
      sku: json["sku"],
      stock: json["stock"],
      unit: json["unit"],
    );
  }
}

class UserMiniModel {
  final int id;
  final String name;
  final String email;

  UserMiniModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory UserMiniModel.fromMap(Map<String, dynamic> json) {
    return UserMiniModel(
      id: json["id"],
      name: json["name"],
      email: json["email"],
    );
  }
}