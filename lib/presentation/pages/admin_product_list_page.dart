import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product/admin_product_bloc.dart';

import 'admin_product_form_page.dart';
import 'admin_product_detail_page.dart';

class AdminProductListPage extends StatefulWidget {
  const AdminProductListPage({super.key});

  @override
  State<AdminProductListPage> createState() => _AdminProductListPageState();
}

class _AdminProductListPageState extends State<AdminProductListPage> {
  final _scroll = ScrollController();
  final _searchC = TextEditingController();
  String? _status; // null = all

  @override
  void initState() {
    super.initState();
    _fetch();

    _scroll.addListener(() {
      if (_scroll.position.pixels >= _scroll.position.maxScrollExtent - 200) {
        context.read<AdminProductBloc>().add(const AdminProductEvent.loadMore());
      }
    });
  }

  @override
  void dispose() {
    _scroll.dispose();
    _searchC.dispose();
    super.dispose();
  }

  void _fetch() {
    context.read<AdminProductBloc>().add(
          AdminProductEvent.getList(
            status: _status,
            search: _searchC.text.trim(),
            perPage: 10,
          ),
        );
  }

  Future<void> _openCreate() async {
    final ok = await Navigator.push<bool>(
      context,
      MaterialPageRoute(builder: (_) => const AdminProductFormPage()),
    );
    if (ok == true) _fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Products'),
        actions: [
          IconButton(onPressed: _openCreate, icon: const Icon(Icons.add)),
        ],
      ),
      body: BlocConsumer<AdminProductBloc, AdminProductState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.green),
              );
              _fetch();
            },
            actionError: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.red),
              );
            },
          );
        },
        builder: (context, state) {
          return Column(
            children: [
              _toolbar(),
              Expanded(
                child: state.maybeWhen(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (msg) => Center(child: Text(msg)),
                  listLoaded: (items, page, perPage, canLoadMore, status, search) =>
                      _list(items, canLoadMore: canLoadMore),
                  loadingMore: (items, page, perPage, canLoadMore, status, search) =>
                      _list(items, canLoadMore: true),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _toolbar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchC,
              decoration: InputDecoration(
                hintText: 'Search SKU / Name',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
              ),
              onSubmitted: (_) => _fetch(),
            ),
          ),
          const SizedBox(width: 10),
          DropdownButton<String?>(
            value: _status,
            items: const [
              DropdownMenuItem(value: null, child: Text('All')),
              DropdownMenuItem(value: 'pending', child: Text('Pending')),
              DropdownMenuItem(value: 'approved', child: Text('Approved')),
              DropdownMenuItem(value: 'rejected', child: Text('Rejected')),
            ],
            onChanged: (v) {
              setState(() => _status = v);
              _fetch();
            },
          ),
        ],
      ),
    );
  }

  Widget _list(List items, {required bool canLoadMore}) {
    if (items.isEmpty) return const Center(child: Text('No data'));

    return RefreshIndicator(
      onRefresh: () async => _fetch(),
      child: ListView.separated(
        controller: _scroll,
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 18),
        itemCount: items.length + (canLoadMore ? 1 : 0),
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, i) {
          if (i == items.length) {
            return const Padding(
              padding: EdgeInsets.all(16),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final p = items[i];
          return InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () async {
              final ok = await Navigator.push<bool>(
                context,
                MaterialPageRoute(builder: (_) => AdminProductDetailPage(id: p.id)),
              );
              if (ok == true) _fetch();
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFEDEEF3)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.inventory_2_outlined),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(p.safeName, style: const TextStyle(fontWeight: FontWeight.w900)),
                        const SizedBox(height: 4),
                        Text('SKU: ${p.safeSku} • Stock: ${p.stock ?? 0} ${p.safeUnit}',
                            style: const TextStyle(color: Color(0xFF7B8191))),
                      ],
                    ),
                  ),
                  Text(p.safeStatus, style: const TextStyle(fontWeight: FontWeight.w800)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}