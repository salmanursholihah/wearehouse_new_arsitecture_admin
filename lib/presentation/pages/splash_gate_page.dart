// import 'package:flutter/material.dart';
// import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';


// class AppColors {
//   static const Color primary = Color(0xff3578BC);
//   static const Color secondary = Color(0xff0E5CA9);
// }

// class SplashGatePage extends StatefulWidget {
//   const SplashGatePage({super.key});

//   @override
//   State<SplashGatePage> createState() => _SplashGatePageState();
// }

// class _SplashGatePageState extends State<SplashGatePage> {
//   @override
//   void initState() {
//     super.initState();
//     _checkLogin();
//   }

//   Future<void> _checkLogin() async {
//     final local = AdminAuthLocalDatasource();
//     final isLoggedIn = await local.isLoggedIn();

//     if (!mounted) return;

//     Navigator.pushNamedAndRemoveUntil(
//       context,
//       isLoggedIn ? '/admin-dashboard' : '/admin-login',
//       (route) => false,
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