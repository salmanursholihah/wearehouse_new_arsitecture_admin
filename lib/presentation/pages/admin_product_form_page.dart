import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_create_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/product_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product/admin_product_bloc.dart';


class AdminProductFormPage extends StatefulWidget {
  final int? productId; // null=create, else=edit
  const AdminProductFormPage({super.key, this.productId});

  @override
  State<AdminProductFormPage> createState() => _AdminProductFormPageState();
}

class _AdminProductFormPageState extends State<AdminProductFormPage> {
  final _formKey = GlobalKey<FormState>();
  final skuC = TextEditingController();
  final nameC = TextEditingController();
  final descC = TextEditingController();
  final stockC = TextEditingController(text: '0');
  final unitC = TextEditingController(text: 'pcs');

  @override
  void initState() {
    super.initState();
    if (widget.productId != null) {
      context.read<AdminProductBloc>().add(AdminProductEvent.getDetail(widget.productId!));
    }
  }

  @override
  void dispose() {
    skuC.dispose();
    nameC.dispose();
    descC.dispose();
    stockC.dispose();
    unitC.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final stock = int.tryParse(stockC.text.trim()) ?? 0;

    if (widget.productId == null) {
      context.read<AdminProductBloc>().add(
            AdminProductEvent.create(
              ProductCreateRequestModel(
                sku: skuC.text.trim(),
                name: nameC.text.trim(),
                description: descC.text.trim().isEmpty ? null : descC.text.trim(),
                stock: stock,
                unit: unitC.text.trim().isEmpty ? 'pcs' : unitC.text.trim(),
              ),
            ),
          );
    } else {
      context.read<AdminProductBloc>().add(
            AdminProductEvent.update(
              id: widget.productId!,
              request: ProductUpdateRequestModel(
                sku: skuC.text.trim(),
                name: nameC.text.trim(),
                description: descC.text.trim().isEmpty ? null : descC.text.trim(),
                stock: stock,
                unit: unitC.text.trim().isEmpty ? 'pcs' : unitC.text.trim(),
              ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: Text(widget.productId == null ? 'Create Product' : 'Edit Product')),
      body: BlocListener<AdminProductBloc, AdminProductState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (_) => Navigator.pop(context, true),
            actionError: (msg) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: Colors.red),
            ),
          );

          state.whenOrNull(
            detailLoaded: (p) {
              if (p == null) return;
              skuC.text = p.sku ?? '';
              nameC.text = p.name ?? '';
              descC.text = p.description ?? '';
              stockC.text = (p.stock ?? 0).toString();
              unitC.text = p.unit ?? 'pcs';
              setState(() {});
            },
          );
        },
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: skuC,
                    decoration: const InputDecoration(labelText: 'SKU'),
                    validator: (v) => (v == null || v.trim().isEmpty) ? 'SKU wajib' : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: nameC,
                    decoration: const InputDecoration(labelText: 'Name'),
                    validator: (v) => (v == null || v.trim().isEmpty) ? 'Name wajib' : null,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: descC,
                    minLines: 3,
                    maxLines: 6,
                    decoration: const InputDecoration(labelText: 'Description (optional)'),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: stockC,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Stock'),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: unitC,
                    decoration: const InputDecoration(labelText: 'Unit (pcs, box, dll)'),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: _submit,
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}