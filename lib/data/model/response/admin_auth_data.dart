import 'dart:convert';

class AdminAuthData {
  final String token;
  final Map<String, dynamic>? user; // simpan raw user map (simple)
  final DateTime? savedAt;

  AdminAuthData({
    required this.token,
    this.user,
    this.savedAt,
  });

  factory AdminAuthData.fromJson(String str) =>
      AdminAuthData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdminAuthData.fromMap(Map<String, dynamic> json) => AdminAuthData(
        token: json["token"] ?? "",
        user: json["user"],
        savedAt: json["saved_at"] == null
            ? null
            : DateTime.tryParse(json["saved_at"]),
      );

  Map<String, dynamic> toMap() => {
        "token": token,
        "user": user,
        "saved_at": savedAt?.toIso8601String(),
      };
}