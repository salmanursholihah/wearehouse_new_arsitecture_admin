import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/admin_me/admin_me_bloc.dart';
import '../bloc/admin_logout/admin_logout_bloc.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({super.key});

  @override
  State<AdminHomePage> createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  void initState() {
    super.initState();
    // Ambil data admin login (me)
    context.read<AdminMeBloc>().add(const AdminMeEvent.getMe());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(18),
          children: [
            // Header Gradient Card
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppColors.primary, AppColors.secondary],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: BlocBuilder<AdminMeBloc, AdminMeState>(
                builder: (context, state) {
                  final name = state.maybeWhen(
                    loaded: (data) => data.data?.name ?? 'Admin',
                    orElse: () => 'Admin',
                  );
                  final role = state.maybeWhen(
                    loaded: (data) => data.data?.role ?? '-',
                    orElse: () => '-',
                  );

                  return Row(
                    children: [
                      Container(
                        width: 54,
                        height: 54,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: const Icon(Icons.admin_panel_settings_rounded,
                            color: Colors.white, size: 28),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi, $name 👋',
                              style: theme.textTheme.titleLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Role: $role',
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: Colors.white.withOpacity(0.85),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // refresh me
                          context
                              .read<AdminMeBloc>()
                              .add(const AdminMeEvent.getMe());
                        },
                        icon: const Icon(Icons.refresh_rounded,
                            color: Colors.white),
                      )
                    ],
                  );
                },
              ),
            ),

            const SizedBox(height: 18),

            Text(
              'Quick Actions',
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 12),

            // Quick Actions Grid
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 1.2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              children: [
                _actionCard(
                  context,
                  title: 'Buat Admin',
                  subtitle: 'Khusus super_admin',
                  icon: Icons.person_add_alt_1_rounded,
                  onTap: () => Navigator.pushNamed(context, '/admin-create'),
                ),
                _actionCard(
                  context,
                  title: 'Lihat Profil',
                  subtitle: 'Data akun kamu',
                  icon: Icons.person_rounded,
                  onTap: () => Navigator.pushNamed(context, '/admin-me'),
                ),
                _actionCard(
                  context,
                  title: 'Settings',
                  subtitle: 'Konfigurasi',
                  icon: Icons.settings_rounded,
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Coming soon')),
                    );
                  },
                ),
                _actionCard(
                  context,
                  title: 'Logout',
                  subtitle: 'Keluar akun',
                  icon: Icons.logout_rounded,
                  onTap: () => _confirmLogout(context),
                ),
              ],
            ),

            const SizedBox(height: 18),

            // Status Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 14,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: BlocBuilder<AdminMeBloc, AdminMeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () => const _StatusLine(
                      title: 'Status',
                      subtitle: 'Belum memuat data',
                      icon: Icons.info_outline_rounded,
                    ),
                    loading: () => const _StatusLine(
                      title: 'Status',
                      subtitle: 'Memuat data admin...',
                      icon: Icons.hourglass_top_rounded,
                    ),
                    loaded: (data) => _StatusLine(
                      title: 'Status',
                      subtitle:
                          'Login aktif sebagai ${data.data?.email ?? '-'}',
                      icon: Icons.verified_rounded,
                    ),
                    error: (message) => _StatusLine(
                      title: 'Status',
                      subtitle: message,
                      icon: Icons.error_outline_rounded,
                      isError: true,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _confirmLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Logout?'),
        content: const Text('Kamu yakin mau keluar dari akun admin?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<AdminLogoutBloc>().add(const AdminLogoutEvent.logout());
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  Widget _actionCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 14,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.12),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(icon, color: AppColors.primary),
            ),
            const Spacer(),
            Text(
              title,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatusLine extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isError;

  const _StatusLine({
    required this.title,
    required this.subtitle,
    required this.icon,
    this.isError = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: isError
                ? Colors.red.withOpacity(0.10)
                : AppColors.primary.withOpacity(0.10),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(
            icon,
            color: isError ? Colors.red : AppColors.primary,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}