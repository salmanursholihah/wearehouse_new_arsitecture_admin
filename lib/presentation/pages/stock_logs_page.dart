import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/stock/stock_bloc.dart';
import 'stock_log_detail_page.dart';
import 'stock_action_page.dart';

class StockLogsPage extends StatefulWidget {
  const StockLogsPage({super.key});

  @override
  State<StockLogsPage> createState() => _StockLogsPageState();
}

class _StockLogsPageState extends State<StockLogsPage> {
  final _scroll = ScrollController();
  final _searchC = TextEditingController();
  String? _type; // null=all, in, out

  @override
  void initState() {
    super.initState();
    _fetch();

    _scroll.addListener(() {
      if (_scroll.position.pixels >= _scroll.position.maxScrollExtent - 200) {
        context.read<StockBloc>().add(const StockEvent.loadMore());
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
    context.read<StockBloc>().add(
          StockEvent.getLogs(
            type: _type,
            search: _searchC.text.trim(),
            perPage: 10,
          ),
        );
  }

  Color _chipColor(String type) => type == 'in' ? Colors.green : Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Stock Logs'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const StockActionPage()),
              );
              _fetch();
            },
          ),
        ],
      ),
      body: BlocConsumer<StockBloc, StockState>(
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
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchC,
                        decoration: InputDecoration(
                          hintText: 'Search SKU / Name',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onSubmitted: (_) => _fetch(),
                      ),
                    ),
                    const SizedBox(width: 10),
                    DropdownButton<String?>(
                      value: _type,
                      items: const [
                        DropdownMenuItem(value: null, child: Text('All')),
                        DropdownMenuItem(value: 'in', child: Text('IN')),
                        DropdownMenuItem(value: 'out', child: Text('OUT')),
                      ],
                      onChanged: (v) {
                        setState(() => _type = v);
                        _fetch();
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: state.maybeWhen(
                  loading: () => const Center(child: CircularProgressIndicator()),
                  error: (msg) => Center(child: Text(msg)),
                  listLoaded: (items, page, perPage, canLoadMore, type, search, productId) =>
                      _list(items, canLoadMore),
                  loadingMore: (items, page, perPage, canLoadMore, type, search, productId) =>
                      _list(items, true),
                  orElse: () => const SizedBox.shrink(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _list(List items, bool canLoadMore) {
    if (items.isEmpty) return const Center(child: Text('Belum ada stock logs'));

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

          final log = items[i];

          final type = (log.safeType).toLowerCase();
          final color = _chipColor(type);

          final productName = log.product?.name ?? '-';
          final sku = log.product?.sku ?? '-';

          return InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => StockLogDetailPage(id: log.id ?? 0)),
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
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Text(
                      type.toUpperCase(),
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
                        Text('SKU: $sku • Qty: ${log.qty ?? 0}',
                            style: const TextStyle(color: Color(0xFF7B8191))),
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