// import 'package:flutter/material.dart';
// import 'package:wearehouse_new_arsitecture_admin/presentation/pages/dashboard_page.dart';
// import '../../data/datasource/admin_auth_local_datasource.dart';
// import 'admin_login_page.dart';

// class AppColors {
//   static const Color primary = Color(0xff3578BC);
//   static const Color secondary = Color(0xff0E5CA9);
// }

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void initState() {
//     super.initState();
//     _gate();
//   }

//   Future<void> _gate() async {
//     final local = AdminAuthLocalDatasource();
//     final isLoggedIn = await local.isLoggedIn();

//     if (!mounted) return;

//     Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//         builder: (_) => isLoggedIn
//             ? const AdminDashboardPage()
//             : const AdminLoginPage(),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: DecoratedBox(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [AppColors.primary, AppColors.secondary],
//           ),
//         ),
//         child: Center(
//           child: CircularProgressIndicator(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

//code 2
import 'package:flutter/material.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/dashboard_page.dart';
import '../../data/datasource/admin_auth_local_datasource.dart';
import 'admin_login_page.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _gate();
  }

  Future<void> _gate() async {
    // optional biar halus
    await Future.delayed(const Duration(milliseconds: 700));

    final local = AdminAuthLocalDatasource();
    final isLoggedIn = await local.isAuth(); // ✅ pakai method kamu

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) =>
            isLoggedIn ? const DashboardPage() : const AdminLoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [AppColors.primary, AppColors.secondary],
          ),
        ),
        child: Center(child: CircularProgressIndicator(color: Colors.white)),
      ),
    );
  }
}
