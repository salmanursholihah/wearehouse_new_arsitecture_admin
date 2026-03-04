import 'dart:convert';

class AboutListResponseModel {
  final bool success;
  final List<AboutModel> data;

  AboutListResponseModel({required this.success, required this.data});

  factory AboutListResponseModel.fromJson(String str) =>
      AboutListResponseModel.fromMap(jsonDecode(str));

  factory AboutListResponseModel.fromMap(Map<String, dynamic> json) {
    final list = (json['data'] as List? ?? [])
        .map((e) => AboutModel.fromMap(e as Map<String, dynamic>))
        .toList();

    return AboutListResponseModel(
      success: json['success'] == true,
      data: list,
    );
  }
}

class AboutDetailResponseModel {
  final bool success;
  final String? message;
  final AboutModel? data;

  AboutDetailResponseModel({required this.success, this.message, this.data});

  factory AboutDetailResponseModel.fromJson(String str) =>
      AboutDetailResponseModel.fromMap(jsonDecode(str));

  factory AboutDetailResponseModel.fromMap(Map<String, dynamic> json) {
    return AboutDetailResponseModel(
      success: json['success'] == true,
      message: json['message']?.toString(),
      data: json['data'] == null ? null : AboutModel.fromMap(json['data']),
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

class AboutModel {
  final int? id;
  final String? title;
  final String? content;
  final String? image;     // path
  final String? imageUrl;  // full url
  final String? createdAt;
  final String? updatedAt;

  AboutModel({
    this.id,
    this.title,
    this.content,
    this.image,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  factory AboutModel.fromMap(Map<String, dynamic> json) {
    return AboutModel(
      id: json['id'] as int?,
      title: json['title']?.toString(),
      content: json['content']?.toString(),
      image: json['image']?.toString(),
      imageUrl: json['image_url']?.toString(),
      createdAt: json['created_at']?.toString(),
      updatedAt: json['updated_at']?.toString(),
    );
  }

  String get safeTitle => (title ?? '').isNotEmpty ? title! : '-';
  String get safeContent => (content ?? '').isNotEmpty ? content! : '-';
}