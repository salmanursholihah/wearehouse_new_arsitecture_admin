import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_user_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/response/admin_user_response_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_user/admin_user_bloc.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class AdminUserDetailPage extends StatefulWidget {
  final int userId;
  const AdminUserDetailPage({super.key, required this.userId});

  @override
  State<AdminUserDetailPage> createState() => _AdminUserDetailPageState();
}

class _AdminUserDetailPageState extends State<AdminUserDetailPage> {
  final nameC = TextEditingController();
  final phoneC = TextEditingController();
  final addressC = TextEditingController();

  XFile? pickedImage; // ✅ standar kamu: image pakai XFile
  String? imageString; // yang dikirim ke API (string)

  @override
  void initState() {
    super.initState();
    context.read<AdminUserBloc>().add(AdminUserEvent.getDetail(widget.userId));
  }

  @override
  void dispose() {
    nameC.dispose();
    phoneC.dispose();
    addressC.dispose();
    super.dispose();
  }

  void _fill(AdminUserModel u) {
    nameC.text = u.name ?? '';
    phoneC.text = u.phone ?? '';
    addressC.text = u.address ?? '';
    imageString = u.image;
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final x = await picker.pickImage(source: ImageSource.gallery, imageQuality: 80);
    if (x == null) return;

    // contoh: kirim base64 string ke field "image"
    // (backend kamu sekarang menerima string; kalau nanti upload file, kita buat endpoint upload)
    final bytes = await x.readAsBytes();
    final b64 = base64Encode(bytes);

    setState(() {
      pickedImage = x;
      imageString = b64; // kirim base64 (atau ganti jadi path/url sesuai backend)
    });
  }

  void _save() {
    final name = nameC.text.trim();
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nama wajib diisi')),
      );
      return;
    }

    context.read<AdminUserBloc>().add(
          AdminUserEvent.update(
            widget.userId,
            AdminUserUpdateRequestModel(
              name: name,
              phone: phoneC.text.trim().isEmpty ? null : phoneC.text.trim(),
              address: addressC.text.trim().isEmpty ? null : addressC.text.trim(),
              image: imageString, // string hasil dari XFile (base64/path)
            ),
          ),
        );
  }

  void _toggleActive(AdminUserModel u) {
    if (u.active) {
      context.read<AdminUserBloc>().add(AdminUserEvent.deactivate(widget.userId));
    } else {
      context.read<AdminUserBloc>().add(AdminUserEvent.activate(widget.userId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: const Text('Detail User'),
      ),
      body: BlocConsumer<AdminUserBloc, AdminUserState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (msg) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(msg), backgroundColor: Colors.green),
              );
              // refresh detail
              context.read<AdminUserBloc>().add(AdminUserEvent.getDetail(widget.userId));
            },
            error: (msg) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: Colors.red),
            ),
          );
        },
        builder: (context, state) {
          final loading = state.maybeWhen(loading: () => true, orElse: () => false);

          return state.maybeWhen(
            detailLoaded: (user) {
              if (user == null) return const Center(child: Text('User tidak ditemukan'));
              _fill(user);

              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _profileCard(user),
                  const SizedBox(height: 14),

                  _field(nameC, 'Nama', icon: Icons.person),
                  const SizedBox(height: 12),
                  _field(phoneC, 'Phone', icon: Icons.phone, required: false),
                  const SizedBox(height: 12),
                  _field(addressC, 'Address', icon: Icons.location_on, required: false),
                  const SizedBox(height: 12),

                  SizedBox(
                    height: 52,
                    child: ElevatedButton(
                      onPressed: loading ? null : _save,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      child: loading
                          ? const CircularProgressIndicator(color: Colors.white)
                          : const Text('Simpan Perubahan'),
                    ),
                  ),
                  const SizedBox(height: 10),

                  SizedBox(
                    height: 52,
                    child: OutlinedButton(
                      onPressed: loading ? null : () => _toggleActive(user),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: user.active ? Colors.red : Colors.green),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      child: Text(
                        user.active ? 'Deactivate' : 'Activate',
                        style: TextStyle(
                          color: user.active ? Colors.red : Colors.green,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              );
            },
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (msg) => Center(child: Text(msg)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _profileCard(AdminUserModel u) {
    return Container(
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
            radius: 26,
            backgroundColor: AppColors.primary.withOpacity(0.12),
            child: Icon(u.active ? Icons.person : Icons.person_off, color: AppColors.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(u.safeName, style: const TextStyle(fontWeight: FontWeight.w800)),
                const SizedBox(height: 4),
                Text(u.safeEmail, style: TextStyle(color: Colors.grey.shade700)),
                const SizedBox(height: 6),
                Text(
                  u.active ? 'Status: Aktif' : 'Status: Nonaktif',
                  style: TextStyle(
                    color: u.active ? Colors.green.shade700 : Colors.red.shade700,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: _pickImage,
            tooltip: 'Pilih Foto (XFile)',
            icon: const Icon(Icons.image_outlined),
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }

  Widget _field(
    TextEditingController c,
    String hint, {
    required IconData icon,
    bool required = true,
  }) {
    return TextField(
      controller: c,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
      ),
    );
  }
}