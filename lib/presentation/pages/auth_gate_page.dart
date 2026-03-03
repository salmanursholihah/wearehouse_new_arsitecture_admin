import 'package:flutter/material.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_login_page.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/buttom_navbar/buttom_navbar.dart';

class AuthGatePage extends StatefulWidget {
  const AuthGatePage({super.key});

  @override
  State<AuthGatePage> createState() => _AuthGatePageState();
}

class _AuthGatePageState extends State<AuthGatePage> {
  @override
  void initState() {
    super.initState();
    _check();
  }

  Future<void> _check() async {
    final isAuth = await AdminAuthLocalDatasource().isAuth();
    if (!mounted) return;

    // ✅ kalau token ada -> masuk Home
    if (isAuth) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MainNavPage()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const AdminLoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
