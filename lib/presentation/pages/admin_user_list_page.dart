import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_user/admin_user_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_user_Response_model.dart';
import 'admin_user_detail_page.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class AdminUserListPage extends StatefulWidget {
  const AdminUserListPage({super.key});

  @override
  State<AdminUserListPage> createState() => _AdminUserListPageState();
}

class _AdminUserListPageState extends State<AdminUserListPage> {
  final _scroll = ScrollController();
  final int _perPage = 10;

  @override
  void initState() {
    super.initState();
    context.read<AdminUserBloc>().add(
          AdminUserEvent.getList(page: 1, perPage: _perPage, isRefresh: true),
        );

    _scroll.addListener(() {
      final state = context.read<AdminUserBloc>().state;
      state.maybeWhen(
        listLoaded: (items, page, perPage, canLoadMore) {
          if (!canLoadMore) return;
          final pos = _scroll.position;
          if (pos.pixels >= pos.maxScrollExtent - 200) {
            context.read<AdminUserBloc>().add(
                  AdminUserEvent.getList(page: page + 1, perPage: perPage),
                );
          }
        },
        orElse: () {},
      );
    });
  }

  Future<void> _refresh() async {
    context.read<AdminUserBloc>().add(
          AdminUserEvent.getList(page: 1, perPage: _perPage, isRefresh: true),
        );
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: const Text('Admin - Users'),
      ),
      body: BlocConsumer<AdminUserBloc, AdminUserState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.green),
              );
              _refresh();
            },
            error: (msg) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: Colors.red),
            ),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            listLoaded: (items, page, perPage, canLoadMore) {
              if (items.isEmpty) {
                return const Center(child: Text('User tidak ditemukan'));
              }

              return RefreshIndicator(
                onRefresh: _refresh,
                child: ListView.separated(
                  controller: _scroll,
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
                  itemCount: items.length + (canLoadMore ? 1 : 0),
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: (context, i) {
                    if (i == items.length) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    final u = items[i];
                    return _userCard(
                      u,
                      onTap: () async {
                        if (u.id == null) return;
                        final res = await Navigator.push<bool>(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AdminUserDetailPage(userId: u.id!),
                          ),
                        );
                        if (res == true) _refresh();
                      },
                    );
                  },
                ),
              );
            },
            error: (msg) => Center(child: Text(msg)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _userCard(AdminUserModel u, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
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
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.primary.withOpacity(0.12),
              child: Icon(
                u.active ? Icons.person : Icons.person_off,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(u.safeName, style: const TextStyle(fontWeight: FontWeight.w800)),
                  const SizedBox(height: 4),
                  Text(u.safeEmail, style: TextStyle(color: Colors.grey.shade700)),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: u.active ? Colors.green.withOpacity(0.12) : Colors.red.withOpacity(0.12),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                u.active ? 'Aktif' : 'Nonaktif',
                style: TextStyle(
                  color: u.active ? Colors.green.shade800 : Colors.red.shade800,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}