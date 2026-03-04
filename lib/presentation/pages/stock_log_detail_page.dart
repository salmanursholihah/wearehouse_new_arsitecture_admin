import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/stock/stock_bloc.dart';

class StockLogDetailPage extends StatefulWidget {
  final int id;
  const StockLogDetailPage({super.key, required this.id});

  @override
  State<StockLogDetailPage> createState() => _StockLogDetailPageState();
}

class _StockLogDetailPageState extends State<StockLogDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<StockBloc>().add(StockEvent.showLog(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: const Text('Log Detail')),
      body: BlocBuilder<StockBloc, StockState>(
        builder: (context, state) {
          final isLoading = state.maybeWhen(detailLoading: () => true, orElse: () => false);
          final log = state.maybeWhen(detailLoaded: (l) => l, orElse: () => null);

          if (isLoading && log == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (log == null) {
            return const Center(child: Text('Log tidak ditemukan'));
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _tile('Type', (log.type ?? '-').toUpperCase()),
              _tile('Product', log.product?.name ?? '-'),
              _tile('SKU', log.product?.sku ?? '-'),
              _tile('Qty', '${log.qty ?? 0}'),
              _tile('Before', '${log.beforeStock ?? '-'}'),
              _tile('After', '${log.afterStock ?? '-'}'),
              _tile('Note', log.note ?? '-'),
              _tile('Created At', log.createdAt ?? '-'),
            ],
          );
        },
      ),
    );
  }

  Widget _tile(String label, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Row(
        children: [
          Expanded(child: Text(label, style: const TextStyle(fontWeight: FontWeight.w900))),
          const SizedBox(width: 12),
          Expanded(child: Text(value, textAlign: TextAlign.right)),
        ],
      ),
    );
  }
}