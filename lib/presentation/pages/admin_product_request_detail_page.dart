import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_request_reject_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product_request/admin_product_request_bloc.dart';

class AdminProductRequestDetailPage extends StatefulWidget {
  final int id;
  const AdminProductRequestDetailPage({super.key, required this.id});

  @override
  State<AdminProductRequestDetailPage> createState() => _AdminProductRequestDetailPageState();
}

class _AdminProductRequestDetailPageState extends State<AdminProductRequestDetailPage> {
  final _reasonC = TextEditingController();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _reasonC.dispose();
    super.dispose();
  }

  void _load() {
    context.read<AdminProductRequestBloc>().add(AdminProductRequestEvent.getDetail(widget.id));
  }

  Future<void> _rejectDialog() async {
    _reasonC.clear();
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Reject Request'),
        content: TextField(
          controller: _reasonC,
          maxLines: 3,
          decoration: const InputDecoration(hintText: 'Alasan reject (opsional)'),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Batal')),
          ElevatedButton(onPressed: () => Navigator.pop(context, true), child: const Text('Reject')),
        ],
      ),
    );

    if (ok == true) {
      context.read<AdminProductRequestBloc>().add(
            AdminProductRequestEvent.reject(
              id: widget.id,
              request: ProductRequestRejectRequestModel(
                reason: _reasonC.text.trim().isEmpty ? null : _reasonC.text.trim(),
              ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: const Text('Request Detail')),
      body: BlocConsumer<AdminProductRequestBloc, AdminProductRequestState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.green),
              );
              _load();
            },
            actionError: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.red),
              );
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(detailLoading: () => true, orElse: () => false);
          final item = state.maybeWhen(detailLoaded: (x) => x, orElse: () => null);
          final actionLoading = state.maybeWhen(actionLoading: () => true, orElse: () => false);

          if (isLoading && item == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (item == null) {
            return const Center(child: Text('Request tidak ditemukan'));
          }

          final product = item.product;
          final user = item.user;
          final status = item.safeStatus.toLowerCase();
          final canAction = status == 'pending';

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _tile('Request ID', '#${item.id ?? '-'}'),
              _tile('Status', item.safeStatus),
              _tile('Purpose', item.safePurpose),
              _tile('Qty', '${item.qty ?? 0} ${product?.unit ?? ''}'),
              const SizedBox(height: 12),

              const Text('Product', style: TextStyle(fontWeight: FontWeight.w900)),
              const SizedBox(height: 8),
              _tile('Name', product?.name ?? '-'),
              _tile('SKU', product?.sku ?? '-'),
              _tile('Stock', '${product?.stock ?? 0} ${product?.unit ?? ''}'),

              const SizedBox(height: 12),
              const Text('User', style: TextStyle(fontWeight: FontWeight.w900)),
              const SizedBox(height: 8),
              _tile('Name', user?.name ?? '-'),
              _tile('Email', user?.email ?? '-'),

              const SizedBox(height: 12),
              const Text('Attachment', style: TextStyle(fontWeight: FontWeight.w900)),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
                child: Text(item.fileUrl ?? '-', style: const TextStyle(fontSize: 12)),
              ),

              const SizedBox(height: 16),
              if (canAction)
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: actionLoading
                            ? null
                            : () => context
                                .read<AdminProductRequestBloc>()
                                .add(AdminProductRequestEvent.approve(widget.id)),
                        child: const Text('Approve'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: actionLoading ? null : _rejectDialog,
                        child: const Text('Reject'),
                      ),
                    ),
                  ],
                )
              else
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
                  child: Text('Tidak bisa aksi karena status: ${item.safeStatus}'),
                ),
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