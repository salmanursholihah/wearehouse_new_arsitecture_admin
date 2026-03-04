import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product_request/admin_product_request_bloc.dart';
import 'admin_product_request_detail_page.dart';

class AdminProductRequestListPage extends StatefulWidget {
  const AdminProductRequestListPage({super.key});

  @override
  State<AdminProductRequestListPage> createState() => _AdminProductRequestListPageState();
}

class _AdminProductRequestListPageState extends State<AdminProductRequestListPage> {
  final _searchC = TextEditingController();
  final _scroll = ScrollController();
  String? _status; // null=all

  @override
  void initState() {
    super.initState();
    _fetch();

    _scroll.addListener(() {
      if (_scroll.position.pixels >= _scroll.position.maxScrollExtent - 220) {
        context.read<AdminProductRequestBloc>().add(const AdminProductRequestEvent.loadMore());
      }
    });
  }

  @override
  void dispose() {
    _searchC.dispose();
    _scroll.dispose();
    super.dispose();
  }

  void _fetch() {
    context.read<AdminProductRequestBloc>().add(
          AdminProductRequestEvent.getList(
            status: _status,
            search: _searchC.text.trim(),
            perPage: 10,
          ),
        );
  }

  Color _statusColor(String s) {
    switch (s) {
      case 'approved':
        return Colors.green;
      case 'rejected':
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: const Text('Product Requests')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchC,
                    decoration: InputDecoration(
                      hintText: 'Search user/product/sku',
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
                )
              ],
            ),
          ),
          Expanded(
            child: BlocConsumer<AdminProductRequestBloc, AdminProductRequestState>(
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
                  error: (msg) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(msg), backgroundColor: Colors.red),
                    );
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (msg) => Center(child: Text(msg)),
                  listLoaded: (items, page, perPage, canLoadMore, status, search) =>
                      _list(items, canLoadMore),
                  loadingMore: (items, page, perPage, canLoadMore, status, search) =>
                      _list(items, true),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _list(List items, bool canLoadMore) {
    if (items.isEmpty) {
      return RefreshIndicator(
        onRefresh: () async => _fetch(),
        child: ListView(children: const [
          SizedBox(height: 140),
          Center(child: Text('Belum ada product request')),
        ]),
      );
    }

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

          final pr = items[i];
          final status = (pr.safeStatus).toLowerCase();
          final color = _statusColor(status);

          final productName = pr.product?.name ?? '-';
          final sku = pr.product?.sku ?? '-';
          final userName = pr.user?.name ?? '-';

          return InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => AdminProductRequestDetailPage(id: pr.id ?? 0)),
            ),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFFEDEEF3)),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(999)),
                    child: Text(
                      status.toUpperCase(),
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w900),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productName, style: const TextStyle(fontWeight: FontWeight.w900)),
                        const SizedBox(height: 4),
                        Text('SKU: $sku • Qty: ${pr.qty ?? 0} • ${pr.safePurpose}',
                            style: const TextStyle(color: Color(0xFF7B8191))),
                        const SizedBox(height: 4),
                        Text('User: $userName', style: const TextStyle(color: Color(0xFF7B8191))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}