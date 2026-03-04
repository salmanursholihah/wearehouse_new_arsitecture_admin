import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/stock_in_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/stock_out_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/stock/stock_bloc.dart';

class StockActionPage extends StatefulWidget {
  const StockActionPage({super.key});

  @override
  State<StockActionPage> createState() => _StockActionPageState();
}

class _StockActionPageState extends State<StockActionPage> {
  final _formKey = GlobalKey<FormState>();
  final productIdC = TextEditingController();
  final qtyC = TextEditingController();
  final noteC = TextEditingController();
  String _mode = 'in'; // in/out

  @override
  void dispose() {
    productIdC.dispose();
    qtyC.dispose();
    noteC.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final productId = int.parse(productIdC.text.trim());
    final qty = int.parse(qtyC.text.trim());
    final note = noteC.text.trim().isEmpty ? null : noteC.text.trim();

    if (_mode == 'in') {
      context.read<StockBloc>().add(
            StockEvent.stockIn(
              StockInRequestModel(productId: productId, qty: qty, note: note),
            ),
          );
    } else {
      context.read<StockBloc>().add(
            StockEvent.stockOut(
              StockOutRequestModel(productId: productId, qty: qty, note: note),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: const Text('Stock Action')),
      body: BlocListener<StockBloc, StockState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (_) => Navigator.pop(context),
            actionError: (msg) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: Colors.red),
            ),
          );
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Row(
              children: [
                ChoiceChip(
                  label: const Text('IN'),
                  selected: _mode == 'in',
                  onSelected: (_) => setState(() => _mode = 'in'),
                ),
                const SizedBox(width: 10),
                ChoiceChip(
                  label: const Text('OUT'),
                  selected: _mode == 'out',
                  onSelected: (_) => setState(() => _mode = 'out'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: productIdC,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Product ID'),
                    validator: (v) => (v == null || v.trim().isEmpty) ? 'Product ID wajib' : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: qtyC,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Qty'),
                    validator: (v) {
                      final val = int.tryParse((v ?? '').trim());
                      if (val == null || val < 1) return 'Qty minimal 1';
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: noteC,
                    decoration: const InputDecoration(labelText: 'Note (optional)'),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<StockBloc, StockState>(
                    builder: (context, state) {
                      final loading = state.maybeWhen(actionLoading: () => true, orElse: () => false);

                      return SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: loading ? null : _submit,
                          child: loading
                              ? const CircularProgressIndicator()
                              : Text(_mode == 'in' ? 'Submit Stock IN' : 'Submit Stock OUT'),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}