// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product/admin_product_bloc.dart';

// import 'admin_product_form_page.dart';

// class AdminProductDetailPage extends StatefulWidget {
//   final int id;
//   const AdminProductDetailPage({super.key, required this.id});

//   @override
//   State<AdminProductDetailPage> createState() => _AdminProductDetailPageState();
// }

// class _AdminProductDetailPageState extends State<AdminProductDetailPage> {
//   @override
//   void initState() {
//     super.initState();
//     context.read<AdminProductBloc>().add(AdminProductEvent.getDetail(widget.id));
//     context.read<AdminProductBloc>().add(AdminProductEvent.getImages(widget.id));
//   }

//   Future<void> _pickAndUpload() async {
//     final x = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 85);
//     if (x == null) return;

//     context.read<AdminProductBloc>().add(
//           AdminProductEvent.addImage(productId: widget.id, image: x),
//         );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF8F9FA),
//       appBar: AppBar(
//         title: const Text('Detail Product'),
//         actions: [
//           IconButton(
//             onPressed: () async {
//               final ok = await Navigator.push<bool>(
//                 context,
//                 MaterialPageRoute(builder: (_) => AdminProductFormPage(productId: widget.id)),
//               );
//               if (ok == true) {
//                 context.read<AdminProductBloc>().add(AdminProductEvent.getDetail(widget.id));
//                 context.read<AdminProductBloc>().add(AdminProductEvent.getImages(widget.id));
//               }
//             },
//             icon: const Icon(Icons.edit),
//           ),
//           IconButton(
//             onPressed: () => context.read<AdminProductBloc>().add(AdminProductEvent.delete(widget.id)),
//             icon: const Icon(Icons.delete_outline),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _pickAndUpload,
//         child: const Icon(Icons.add_a_photo_outlined),
//       ),
//       body: BlocConsumer<AdminProductBloc, AdminProductState>(
//         listener: (context, state) {
//           state.whenOrNull(
//             actionSuccess: (msg) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(msg), backgroundColor: Colors.green),
//               );
//               context.read<AdminProductBloc>().add(AdminProductEvent.getDetail(widget.id));
//               context.read<AdminProductBloc>().add(AdminProductEvent.getImages(widget.id));
//             },
//             actionError: (msg) {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(msg), backgroundColor: Colors.red),
//               );
//             },
//           );
//         },
//         builder: (context, state) {
//           final product = state.maybeWhen(
//             detailLoaded: (p) => p,
//             orElse: () => null,
//           );

//           final images = state.maybeWhen(
//             imagesLoaded: (imgs) => imgs,
//             orElse: () => const [],
//           );

//           if (state is _DetailLoading) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           if (product == null) {
//             return const Center(child: Text('Product tidak ditemukan'));
//           }

//           return ListView(
//             padding: const EdgeInsets.all(16),
//             children: [
//               _tile('Name', product.safeName),
//               _tile('SKU', product.safeSku),
//               _tile('Stock', '${product.stock ?? 0} ${product.safeUnit}'),
//               _tile('Status', product.safeStatus),
//               const SizedBox(height: 12),

//               Row(
//                 children: [
//                   Expanded(
//                     child: ElevatedButton(
//                       onPressed: () => context.read<AdminProductBloc>().add(AdminProductEvent.approve(widget.id)),
//                       child: const Text('Approve'),
//                     ),
//                   ),
//                   const SizedBox(width: 10),
//                   Expanded(
//                     child: OutlinedButton(
//                       onPressed: () => context.read<AdminProductBloc>().add(AdminProductEvent.reject(widget.id)),
//                       child: const Text('Reject'),
//                     ),
//                   ),
//                 ],
//               ),

//               const SizedBox(height: 16),
//               const Text('Images', style: TextStyle(fontWeight: FontWeight.w900)),
//               const SizedBox(height: 10),

//               if (images.isEmpty)
//                 const Text('Belum ada gambar')
//               else
//                 Wrap(
//                   spacing: 10,
//                   runSpacing: 10,
//                   children: images.map((img) {
//                     final url = img.bestUrl;
//                     return Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(14),
//                           child: Container(
//                             width: 110,
//                             height: 110,
//                             color: Colors.grey.shade200,
//                             child: (url == null || url.isEmpty)
//                                 ? const Center(child: Icon(Icons.image_not_supported))
//                                 : Image.network(url, fit: BoxFit.cover),
//                           ),
//                         ),
//                         Positioned(
//                           right: 4,
//                           top: 4,
//                           child: InkWell(
//                             onTap: () {
//                               if (img.id == null) return;
//                               context.read<AdminProductBloc>().add(AdminProductEvent.deleteImage(img.id!));
//                             },
//                             child: Container(
//                               padding: const EdgeInsets.all(6),
//                               decoration: BoxDecoration(
//                                 color: Colors.black.withOpacity(0.55),
//                                 borderRadius: BorderRadius.circular(999),
//                               ),
//                               child: const Icon(Icons.close, size: 14, color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ],
//                     );
//                   }).toList(),
//                 ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _tile(String label, String value) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 10),
//       padding: const EdgeInsets.all(14),
//       decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14)),
//       child: Row(
//         children: [
//           Expanded(child: Text(label, style: const TextStyle(fontWeight: FontWeight.w900))),
//           const SizedBox(width: 12),
//           Expanded(child: Text(value, textAlign: TextAlign.right)),
//         ],
//       ),
//     );
//   }
// }


//code 2
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_product/admin_product_bloc.dart';

import '../pages/admin_product_form_page.dart';

class AdminProductDetailPage extends StatefulWidget {
  final int id;
  const AdminProductDetailPage({super.key, required this.id});

  @override
  State<AdminProductDetailPage> createState() => _AdminProductDetailPageState();
}

class _AdminProductDetailPageState extends State<AdminProductDetailPage> {
  @override
  void initState() {
    super.initState();
    _reload();
  }

  void _reload() {
    context.read<AdminProductBloc>().add(AdminProductEvent.getDetail(widget.id));
    context.read<AdminProductBloc>().add(AdminProductEvent.getImages(widget.id));
  }

  Future<void> _pickAndUpload() async {
    final x = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );
    if (x == null) return;

    // ✅ XFile -> event addImage
    context.read<AdminProductBloc>().add(
          AdminProductEvent.addImage(productId: widget.id, image: x),
        );
  }

  Future<void> _openEdit() async {
    final ok = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (_) => AdminProductFormPage(productId: widget.id),
      ),
    );
    if (ok == true) _reload();
  }

  void _deleteProduct() {
    context.read<AdminProductBloc>().add(AdminProductEvent.delete(widget.id));
  }

  void _approve() {
    context.read<AdminProductBloc>().add(AdminProductEvent.approve(widget.id));
  }

  void _reject() {
    context.read<AdminProductBloc>().add(AdminProductEvent.reject(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Detail Product'),
        actions: [
          IconButton(onPressed: _openEdit, icon: const Icon(Icons.edit)),
          IconButton(onPressed: _deleteProduct, icon: const Icon(Icons.delete_outline)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickAndUpload,
        child: const Icon(Icons.add_a_photo_outlined),
      ),
      body: BlocConsumer<AdminProductBloc, AdminProductState>(
        listener: (context, state) {
          state.whenOrNull(
            actionSuccess: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.green),
              );
              _reload();
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
          // ✅ Ambil product dari state detailLoaded
          final product = state.maybeWhen(
            detailLoaded: (p) => p,
            orElse: () => null,
          );

          // ✅ Ambil images dari state imagesLoaded
          final images = state.maybeWhen(
            imagesLoaded: (imgs) => imgs,
            orElse: () => const [],
          );

          // ✅ Loading detail: pakai maybeWhen, bukan `is _DetailLoading`
          final isDetailLoading = state.maybeWhen(
            detailLoading: () => true,
            orElse: () => false,
          );

          if (isDetailLoading && product == null) {
            return const Center(child: CircularProgressIndicator());
          }

          if (product == null) {
            return const Center(child: Text('Product tidak ditemukan'));
          }

          final status = product.safeStatus; // pending/approved/rejected

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _tile('Name', product.safeName),
              _tile('SKU', product.safeSku),
              _tile('Stock', '${product.stock ?? 0} ${product.safeUnit}'),
              _tile('Status', status),
              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _approve,
                      child: const Text('Approve'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _reject,
                      child: const Text('Reject'),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              const Text('Images', style: TextStyle(fontWeight: FontWeight.w900)),
              const SizedBox(height: 10),

              if (state.maybeWhen(imagesLoading: () => true, orElse: () => false) &&
                  images.isEmpty)
                const Center(child: Padding(
                  padding: EdgeInsets.all(12),
                  child: CircularProgressIndicator(),
                ))
              else if (images.isEmpty)
                const Text('Belum ada gambar')
              else
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: images.map((img) {
                    final url = img.bestUrl;
                    return Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Container(
                            width: 110,
                            height: 110,
                            color: Colors.grey.shade200,
                            child: (url == null || url.isEmpty)
                                ? const Center(child: Icon(Icons.image_not_supported))
                                : Image.network(url, fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          right: 4,
                          top: 4,
                          child: InkWell(
                            onTap: () {
                              if (img.id == null) return;
                              context.read<AdminProductBloc>().add(
                                    AdminProductEvent.deleteImage(img.id!),
                                  );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.55),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: const Icon(Icons.close, size: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),

              const SizedBox(height: 20),
              if (state.maybeWhen(actionLoading: () => true, orElse: () => false))
                const Center(child: CircularProgressIndicator()),
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
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
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



