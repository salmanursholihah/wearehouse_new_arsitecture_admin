// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../bloc/admin_logout/admin_logout_bloc.dart';
// import 'admin_home_page.dart';
// import 'admin_me_page.dart';

// class AppColors {
//   static const Color primary = Color(0xff3578BC);
//   static const Color secondary = Color(0xff0E5CA9);
// }

// class AdminDashboardPage extends StatefulWidget {
//   const AdminDashboardPage({super.key});

//   @override
//   State<AdminDashboardPage> createState() => _AdminDashboardPageState();
// }

// class _AdminDashboardPageState extends State<AdminDashboardPage> {
//   int currentIndex = 0;

//   final pages = const [AdminHomePage(), AdminMePage()];

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AdminLogoutBloc, AdminLogoutState>(
//       listener: (context, state) {
//         state.whenOrNull(
//           success: (_) {
//             // balik ke login
//             Navigator.pushNamedAndRemoveUntil(
//               context,
//               '/admin-login',
//               (route) => false,
//             );
//           },
//           error: (message) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(message),
//                 backgroundColor: Colors.red.shade400,
//                 behavior: SnackBarBehavior.floating,
//               ),
//             );
//           },
//         );
//       },
//       child: Scaffold(
//         body: pages[currentIndex],
//         bottomNavigationBar: Container(
//           decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.06),
//                 blurRadius: 16,
//                 offset: const Offset(0, -6),
//               ),
//             ],
//           ),
//           child: BottomNavigationBar(
//             currentIndex: currentIndex,
//             onTap: (i) => setState(() => currentIndex = i),
//             selectedItemColor: AppColors.primary,
//             unselectedItemColor: Colors.grey.shade600,
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.dashboard_rounded),
//                 label: 'Dashboard',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person_rounded),
//                 label: 'Me',
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//code 2
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_logout/admin_logout_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/admin_login_page.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  void _confirmLogout(BuildContext context) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Logout?'),
        content: const Text('Yakin ingin keluar dari aplikasi admin?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('Logout'),
          ),
        ],
      ),
    );

    if (ok == true) {
      context.read<AdminLogoutBloc>().add(const AdminLogoutEvent.logout());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdminLogoutBloc, AdminLogoutState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (msg) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: Colors.green),
            );

            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (_) => const AdminLoginPage()),
              (route) => false,
            );
          },
          error: (msg) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: Colors.red),
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF8F9FA),
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          title: const Text('Admin Dashboard'),
          actions: [
            BlocBuilder<AdminLogoutBloc, AdminLogoutState>(
              builder: (context, state) {
                final isLoading = state.maybeWhen(
                  loading: () => true,
                  orElse: () => false,
                );

                return IconButton(
                  onPressed: isLoading ? null : () => _confirmLogout(context),
                  tooltip: 'Logout',
                  icon: isLoading
                      ? const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.5,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(Icons.logout),
                );
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _headerCard(),
            const SizedBox(height: 14),
            _menuGrid(context),
          ],
        ),
      ),
    );
  }

  Widget _headerCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            offset: const Offset(0, 8),
            color: Colors.black.withOpacity(0.10),
          ),
        ],
      ),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white24,
            child: Icon(Icons.admin_panel_settings, color: Colors.white),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selamat datang, Admin 👋',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Kelola data & aktivitas admin di sini.',
                  style: TextStyle(color: Colors.white70, fontSize: 12.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _menuGrid(BuildContext context) {
    final menus = <_MenuItem>[
      _MenuItem('Users', Icons.people_alt_outlined, 'Kelola user'),
      _MenuItem('Inventory', Icons.inventory_2_outlined, 'Kelola stok'),
      _MenuItem('Requests', Icons.assignment_outlined, 'Pengajuan barang'),
      _MenuItem('Settings', Icons.settings_outlined, 'Pengaturan'),
    ];

    return GridView.builder(
      itemCount: menus.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 1.05,
      ),
      itemBuilder: (context, i) {
        final item = menus[i];
        return InkWell(
          onTap: () {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Klik menu: ${item.title}')));
          },
          borderRadius: BorderRadius.circular(16),
          child: Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 14,
                  offset: const Offset(0, 6),
                  color: Colors.black.withOpacity(0.06),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.primary.withOpacity(0.12),
                  child: Icon(item.icon, color: AppColors.primary),
                ),
                const Spacer(),
                Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 14.5,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.subtitle,
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 12.5),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _MenuItem {
  final String title;
  final IconData icon;
  final String subtitle;

  _MenuItem(this.title, this.icon, this.subtitle);
}
