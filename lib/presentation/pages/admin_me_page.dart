import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/admin_me/admin_me_bloc.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class AdminMePage extends StatefulWidget {
  const AdminMePage({super.key});

  @override
  State<AdminMePage> createState() => _AdminMePageState();
}

class _AdminMePageState extends State<AdminMePage> {
  @override
  void initState() {
    super.initState();
    context.read<AdminMeBloc>().add(const AdminMeEvent.getMe());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: const Text('Me'),
        actions: [
          IconButton(
            onPressed: () =>
                context.read<AdminMeBloc>().add(const AdminMeEvent.getMe()),
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),
      body: BlocBuilder<AdminMeBloc, AdminMeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const _CenterInfo(text: 'Belum memuat data'),
            loading: () => const _CenterLoading(),
            error: (message) => _CenterInfo(text: message, isError: true),
            loaded: (res) {
              final user = res.data;

              return ListView(
                padding: const EdgeInsets.all(18),
                children: [
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
                    child: Row(
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.18),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Icon(Icons.person_rounded,
                              color: Colors.white, size: 30),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                user?.name ?? '-',
                                style: theme.textTheme.titleLarge?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                user?.email ?? '-',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: Colors.white.withOpacity(0.85),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  _infoTile(
                    title: 'Role',
                    value: user?.role ?? '-',
                    icon: Icons.security_rounded,
                  ),
                  _infoTile(
                    title: 'Phone',
                    value: user?.phone ?? '-',
                    icon: Icons.phone_rounded,
                  ),
                  _infoTile(
                    title: 'Address',
                    value: user?.address ?? '-',
                    icon: Icons.location_on_rounded,
                  ),
                  // _infoTile(
                  //   title: 'Status',
                  //   value: (user?.isActive ?? false) ? 'Active' : 'Inactive',
                  //   icon: Icons.verified_rounded,
                  // ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _infoTile({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.12),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: AppColors.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.w900)),
                const SizedBox(height: 2),
                Text(value, style: TextStyle(color: Colors.grey.shade700)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CenterLoading extends StatelessWidget {
  const _CenterLoading();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _CenterInfo extends StatelessWidget {
  final String text;
  final bool isError;

  const _CenterInfo({required this.text, this.isError = false});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: isError ? Colors.red : Colors.grey.shade700,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}