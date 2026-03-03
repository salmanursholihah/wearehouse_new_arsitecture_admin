import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/request/admin_register_request_model.dart';
import '../bloc/admin_register/admin_register_bloc.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class AdminCreateAdminPage extends StatefulWidget {
  const AdminCreateAdminPage({super.key});

  @override
  State<AdminCreateAdminPage> createState() => _AdminCreateAdminPageState();
}

class _AdminCreateAdminPageState extends State<AdminCreateAdminPage> {
  final _formKey = GlobalKey<FormState>();
  final nameC = TextEditingController();
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final phoneC = TextEditingController();
  final addressC = TextEditingController();
  String? role; // admin | super_admin
  bool showPass = false;

  @override
  void dispose() {
    nameC.dispose();
    emailC.dispose();
    passC.dispose();
    phoneC.dispose();
    addressC.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final request = AdminRegisterRequestModel(
      name: nameC.text.trim(),
      email: emailC.text.trim(),
      password: passC.text,
      phone: phoneC.text.trim().isEmpty ? null : phoneC.text.trim(),
      address: addressC.text.trim().isEmpty ? null : addressC.text.trim(),
      role: role,
    );

    context.read<AdminRegisterBloc>().add(AdminRegisterEvent.register(request));
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: const Text('Buat Admin'),
      ),
      body: BlocConsumer<AdminRegisterBloc, AdminRegisterState>(
        listener: (context, state) {
          state.whenOrNull(
            loaded: (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Admin berhasil dibuat'),
                  backgroundColor: Colors.green.shade400,
                ),
              );
              Navigator.pop(context);
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                  backgroundColor: Colors.red.shade400,
                ),
              );
            },
          );
        },
        builder: (context, state) {
          final isLoading =
              state.maybeWhen(loading: () => true, orElse: () => false);

          return ListView(
            padding: const EdgeInsets.all(18),
            children: [
              Text(
                'Form Admin Baru',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 12),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    _field(
                      controller: nameC,
                      label: 'Nama',
                      icon: Icons.person,
                      validator: (v) =>
                          v == null || v.isEmpty ? 'Nama wajib diisi' : null,
                    ),
                    _field(
                      controller: emailC,
                      label: 'Email',
                      icon: Icons.email,
                      keyboardType: TextInputType.emailAddress,
                      validator: (v) =>
                          v == null || v.isEmpty ? 'Email wajib diisi' : null,
                    ),
                    _field(
                      controller: passC,
                      label: 'Password',
                      icon: Icons.lock,
                      obscureText: !showPass,
                      suffix: IconButton(
                        onPressed: () => setState(() => showPass = !showPass),
                        icon: Icon(
                          showPass ? Icons.visibility_off : Icons.visibility,
                          color: AppColors.primary,
                        ),
                      ),
                      validator: (v) {
                        if (v == null || v.isEmpty) return 'Password wajib diisi';
                        if (v.length < 6) return 'Minimal 6 karakter';
                        return null;
                      },
                    ),
                    _field(
                      controller: phoneC,
                      label: 'Phone (opsional)',
                      icon: Icons.phone,
                      keyboardType: TextInputType.phone,
                    ),
                    _field(
                      controller: addressC,
                      label: 'Address (opsional)',
                      icon: Icons.location_on,
                      maxLines: 2,
                    ),
                    DropdownButtonFormField<String>(
                      value: role,
                      decoration: InputDecoration(
                        labelText: 'Role (opsional)',
                        prefixIcon:
                            const Icon(Icons.security, color: AppColors.primary),
                        filled: true,
                        fillColor: Colors.grey.shade50,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      items: const [
                        DropdownMenuItem(value: 'admin', child: Text('ADMIN')),
                        DropdownMenuItem(
                            value: 'super_admin', child: Text('SUPER ADMIN')),
                      ],
                      onChanged: (v) => setState(() => role = v),
                    ),
                    const SizedBox(height: 16),
                    _primaryButton(
                      text: 'Simpan',
                      isLoading: isLoading,
                      onTap: isLoading ? null : _submit,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _field({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType? keyboardType,
    int maxLines = 1,
    bool obscureText = false,
    Widget? suffix,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: AppColors.primary),
          suffixIcon: suffix,
          filled: true,
          fillColor: Colors.grey.shade50,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: AppColors.primary, width: 2),
          ),
        ),
      ),
    );
  }

  Widget _primaryButton({
    required String text,
    required bool isLoading,
    required VoidCallback? onTap,
  }) {
    return Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.25),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}