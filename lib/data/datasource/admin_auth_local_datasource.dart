import 'package:shared_preferences/shared_preferences.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_auth_data.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_auth_response_model.dart';

// class AdminAuthLocalDatasource {
//   static const _key = 'admin_auth_data';

//   Future<void> saveAuthData(AdminAuthData data) async {
//     final pref = await SharedPreferences.getInstance();
//     await pref.setString(_key, data.toJson());
//   }

//   Future<AdminAuthData?> getAuthData() async {
//     final pref = await SharedPreferences.getInstance();
//     final raw = pref.getString(_key);

//     if (raw == null || raw.isEmpty) return null;

//     try {
//       return AdminAuthData.fromJson(raw);
//     } catch (_) {
//       await pref.remove(_key);
//       return null;
//     }
//   }

//   Future<String?> getToken() async {
//     final auth = await getAuthData();
//     if (auth == null) return null;
//     if (auth.token.isEmpty) return null;
//     return auth.token;
//   }

//   Future<bool> isLoggedIn() async {
//     final token = await getToken();
//     return token != null && token.isNotEmpty;
//   }

//   Future<void> clearAuthData() async {
//     final pref = await SharedPreferences.getInstance();
//     await pref.remove(_key);
//   }
// }

//code 2
class AdminAuthLocalDatasource {
  static const _keyAuthData = 'auth_data_admin'; // ✅ dipisah dari user

  Future<void> saveAuthData(AdminAuthResponseModel data) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(_keyAuthData, data.toRawJson());
  }

  Future<AdminAuthResponseModel?> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final raw = pref.getString(_keyAuthData);
    if (raw == null) return null;

    try {
      return AdminAuthResponseModel.fromRawJson(raw);
    } catch (_) {
      await pref.remove(_keyAuthData);
      return null;
    }
  }

  Future<String?> getToken() async {
    final auth = await getAuthData();
    return auth?.data?.token;
  }

  Future<bool> isAuth() async {
  final auth = await getAuthData();
  final token = auth?.data?.token;
  return token != null && token.isNotEmpty;
}

  Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(_keyAuthData);
  }
}