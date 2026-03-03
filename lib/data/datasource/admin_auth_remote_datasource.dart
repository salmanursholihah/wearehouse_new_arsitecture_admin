import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_auth_response_model.dart';

import '../../core/constants/variables.dart';
import '../datasource/admin_auth_local_datasource.dart';
import '../model/request/admin_login_request_model.dart';
import '../model/request/admin_register_request_model.dart';
import '../model/response/admin_login_response_model.dart';
import '../model/response/admin_me_response_model.dart';
import '../model/response/admin_register_response_model.dart';

// class AdminAuthRemoteDatasource {
//   final AdminAuthLocalDatasource local;

//   AdminAuthRemoteDatasource(this.local);

//   static const _headersJson = {
//     'Accept': 'application/json',
//     'Content-Type': 'application/json',
//   };

//   Map<String, String> _headersWithToken(String? token) => {
//         ..._headersJson,
//         if (token != null && token.isNotEmpty) 'Authorization': 'Bearer $token',
//       };

//   Map<String, dynamic> _decodeMap(String raw) {
//     if (raw.isEmpty) return <String, dynamic>{};
//     try {
//       final dynamic decoded = jsonDecode(raw);
//       if (decoded is! Map) return <String, dynamic>{};
//       return decoded.map((k, v) => MapEntry(k.toString(), v));
//     } catch (_) {
//       return <String, dynamic>{};
//     }
//   }

//   String _extractErrorMessage(Map<String, dynamic> body, {String? fallback}) {
//     final errors = body['errors'];
//     if (errors is Map && errors.isNotEmpty) {
//       final firstKey = errors.keys.first;
//       final val = errors[firstKey];
//       if (val is List && val.isNotEmpty) return val.first.toString();
//       if (val != null) return val.toString();
//     }
//     final msg = body['message'];
//     if (msg != null && msg.toString().isNotEmpty) return msg.toString();
//     return fallback ?? 'Terjadi kesalahan';
//   }

//    Future<Either<String, AdminLoginResponseModel>> login(
//     AdminLoginRequestModel request,
//   ) async {
//     try {
//       final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/login');

//       final response = await http.post(
//         url,
//         headers: const {
//           'Accept': 'application/json',
//           'Content-Type': 'application/json',
//         },
//         body: request.toJson(),
//       );

//       final decoded = jsonDecode(response.body);

//       if (response.statusCode == 200) {
//         return Right(AdminLoginResponseModel.fromRawJson(response.body));
//       }

//       return Left(decoded['message'] ?? 'Login gagal');
//     } catch (_) {
//       return const Left('Tidak dapat terhubung ke server');
//     }
//   }

//   Future<Either<String, Map<String, dynamic>>> me() async {
//     try {
//       final auth = await local.getAuthData();
//       final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/me');

//       final response = await http.get(
//         url,
//         headers: {
//           'Accept': 'application/json',
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer ${auth?.token}',
//         },
//       );

//       final decoded = jsonDecode(response.body);

//       if (response.statusCode == 200) {
//         return Right(decoded);
//       }

//       return Left(decoded['message'] ?? 'Gagal mengambil data me');
//     } catch (_) {
//       return const Left('Tidak dapat terhubung ke server');
//     }
//   }

//   Future<Either<String, String>> logout() async {
//     try {
//       final auth = await local.getAuthData();
//       final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/logout');

//       final response = await http.post(
//         url,
//         headers: {
//           'Accept': 'application/json',
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer ${auth?.token}',
//         },
//       );

//       final decoded = jsonDecode(response.body);

//       if (response.statusCode == 200) {
//         return const Right('Logout berhasil');
//       }

//       return Left(decoded['message'] ?? 'Logout gagal');
//     } catch (_) {
//       return const Left('Tidak dapat terhubung ke server');
//     }
//   }

//   // /// POST /api/auth/admin/login
//   // Future<Either<String, AdminLoginResponseModel>> login(
//   //   AdminLoginRequestModel request,
//   // ) async {
//   //   try {
//   //     final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/login');

//   //     final response = await http.post(
//   //       url,
//   //       headers: _headersJson,
//   //       body: jsonEncode(request.toJson()), // ✅ penting: jsonEncode
//   //     );

//   //     if (response.statusCode == 200) {
//   //       return Right(AdminLoginResponseModel.fromRawJson(response.body));
//   //     }

//   //     final body = _decodeMap(response.body);
//   //     return Left(_extractErrorMessage(body, fallback: 'Login gagal'));
//   //   } catch (_) {
//   //     return const Left('Tidak dapat terhubung ke server');
//   //   }
//   // }

//   // /// GET /api/auth/admin/me
//   // Future<Either<String, AdminMeResponseModel>> me() async {
//   //   try {
//   //     final auth = await local.getAuthData(); // ✅ sesuai permintaan kamu
//   //     final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/me');

//   //     final response = await http.get(
//   //       url,
//   //       headers: _headersWithToken(auth?.token),
//   //     );

//   //     if (response.statusCode == 200) {
//   //       return Right(AdminMeResponseModel.fromRawJson(response.body));
//   //     }

//   //     final body = _decodeMap(response.body);
//   //     return Left(_extractErrorMessage(body, fallback: 'Gagal mengambil data admin'));
//   //   } catch (_) {
//   //     return const Left('Tidak dapat terhubung ke server');
//   //   }
//   // }

//   // /// POST /api/auth/admin/logout
//   // Future<Either<String, String>> logout() async {
//   //   try {
//   //     final auth = await local.getAuthData(); // ✅ sesuai permintaan kamu
//   //     final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/logout');

//   //     final response = await http.post(
//   //       url,
//   //       headers: _headersWithToken(auth?.token),
//   //     );

//   //     if (response.statusCode == 200) {
//   //       return const Right('Logout berhasil');
//   //     }

//   //     final body = _decodeMap(response.body);
//   //     return Left(_extractErrorMessage(body, fallback: 'Gagal logout'));
//   //   } catch (_) {
//   //     return const Left('Tidak dapat terhubung ke server');
//   //   }
//   // }

//   /// POST /api/auth/admin/register
//   Future<Either<String, AdminRegisterResponseModel>> register(
//     AdminRegisterRequestModel request,
//   ) async {
//     try {
//       final auth = await local.getAuthData(); // ✅ sesuai permintaan kamu
//       final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/register');

//       final response = await http.post(
//         url,
//         headers: _headersWithToken(auth?.token),
//         body: jsonEncode(request.toJson()), // ✅ penting: jsonEncode
//       );

//       if (response.statusCode == 201) {
//         return Right(AdminRegisterResponseModel.fromRawJson(response.body));
//       }

//       final body = _decodeMap(response.body);
//       return Left(_extractErrorMessage(body, fallback: 'Gagal membuat admin'));
//     } catch (_) {
//       return const Left('Tidak dapat terhubung ke server');
//     }
//   }
// }

//code 2
class AdminAuthRemoteDatasource {
  static const _headersJson = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  String _extractErrorMessage(Map<String, dynamic> body, {String? fallback}) {
    final errors = body['errors'];
    if (errors is Map && errors.isNotEmpty) {
      final firstKey = errors.keys.first;
      final val = errors[firstKey];
      if (val is List && val.isNotEmpty) return val.first.toString();
      if (val != null) return val.toString();
    }

    final message = body['message'];
    if (message != null && message.toString().isNotEmpty) {
      return message.toString();
    }

    return fallback ?? 'Terjadi kesalahan, silakan coba lagi';
  }

  /// POST /api/auth/admin/login
  Future<Either<String, AdminAuthResponseModel>> login(
    AdminLoginRequestModel request,
  ) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/login');
      final response = await http.post(
        url,
        headers: _headersJson,
        body: request.toJson(),
      );

      final Map<String, dynamic> body = response.body.isNotEmpty
          ? jsonDecode(response.body)
          : {};

      if (response.statusCode == 200) {
        return Right(AdminAuthResponseModel.fromRawJson(response.body));
      }

      if (response.statusCode == 422) {
        return Left(_extractErrorMessage(body, fallback: 'Validasi gagal'));
      }

      if (response.statusCode == 403) {
        return Left(_extractErrorMessage(body, fallback: 'Akses ditolak'));
      }

      return Left(_extractErrorMessage(body));
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  /// GET /api/auth/admin/me
  Future<Either<String, AdminModel>> me() async {
    try {
      final token = await AdminAuthLocalDatasource().getToken();
      if (token == null || token.isEmpty) {
        return const Left('Token tidak ditemukan, silakan login ulang');
      }

      final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/me');
      final response = await http.get(
        url,
        headers: {..._headersJson, 'Authorization': 'Bearer $token'},
      );

      final Map<String, dynamic> body = response.body.isNotEmpty
          ? jsonDecode(response.body)
          : {};

      if (response.statusCode == 200) {
        // response: { success:true, data:{...user} }
        final data = body['data'] as Map<String, dynamic>?;
        if (data == null) return const Left('Data admin tidak ditemukan');
        return Right(AdminModel.fromMap(data));
      }

      if (response.statusCode == 401) {
        return Left(
          _extractErrorMessage(
            body,
            fallback: 'Sesi habis, silakan login ulang',
          ),
        );
      }

      return Left(
        _extractErrorMessage(body, fallback: 'Gagal mengambil data admin'),
      );
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }

  /// POST /api/auth/admin/logout
  Future<Either<String, String>> logout() async {
    try {
      final token = await AdminAuthLocalDatasource().getToken();
      if (token == null || token.isEmpty) {
        return const Left('Token tidak ditemukan, silakan login ulang');
      }

      final url = Uri.parse('${Variables.baseUrl}/api/auth/admin/logout');
      final response = await http.post(
        url,
        headers: {..._headersJson, 'Authorization': 'Bearer $token'},
      );

      final Map<String, dynamic> body = response.body.isNotEmpty
          ? jsonDecode(response.body)
          : {};

      if (response.statusCode == 200) {
        return Right(body['message']?.toString() ?? 'Logout berhasil');
      }

      if (response.statusCode == 401) {
        return Left(
          _extractErrorMessage(
            body,
            fallback: 'Sesi habis, silakan login ulang',
          ),
        );
      }

      return Left(_extractErrorMessage(body, fallback: 'Gagal logout'));
    } catch (_) {
      return const Left('Tidak dapat terhubung ke server');
    }
  }
}
