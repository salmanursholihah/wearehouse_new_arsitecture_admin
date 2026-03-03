// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:wearehouse_new_arsitecture_admin/presentation/pages/buttom_navbar/buttom_navbar.dart';

// import '../../../data/model/request/admin_login_request_model.dart';
// import '../bloc/admin_login/admin_login_bloc.dart';

// // sesuaikan dengan core colors kamu
// class AppColors {
//   static const Color primary = Color(0xff3578BC);
//   static const Color secondary = Color(0xff0E5CA9);
// }

// class AdminLoginPage extends StatefulWidget {
//   const AdminLoginPage({super.key});

//   @override
//   State<AdminLoginPage> createState() => _AdminLoginPageState();
// }

// class _AdminLoginPageState extends State<AdminLoginPage> {
//   final _formKey = GlobalKey<FormState>();
//   final emailController = TextEditingController();
//   final passController = TextEditingController();
//   bool isShowPassword = false;

//   @override
//   void dispose() {
//     emailController.dispose();
//     passController.dispose();
//     super.dispose();
//   }

//   void _submit() {
//     if (!_formKey.currentState!.validate()) return;

//     final request = AdminLoginRequestModel(
//       email: emailController.text.trim(),
//       password: passController.text,
//     );

//     context.read<AdminLoginBloc>().add(AdminLoginEvent.login(request));
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomLeft,
//             colors: [AppColors.primary, AppColors.secondary],
//           ),
//         ),
//         child: SafeArea(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(20),
//                 child: Row(
//                   children: [
//                     Text(
//                       'Admin Panel',
//                       style: theme.textTheme.headlineSmall?.copyWith(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w800,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: BlocConsumer<AdminLoginBloc, AdminLoginState>(
//                   listener: (context, state) {
//                     state.whenOrNull(
//                       loaded: (_) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: const Text('Login admin berhasil'),
//                             backgroundColor: Colors.green.shade400,
//                             behavior: SnackBarBehavior.floating,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                         );

//                        Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (_) => const MainNavPage()),
//                   );
//                       },
//                       error: (message) {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           SnackBar(
//                             content: Text(message),
//                             backgroundColor: Colors.red.shade400,
//                             behavior: SnackBarBehavior.floating,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(12),
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                   builder: (context, state) {
//                     final isLoading = state.maybeWhen(
//                       loading: () => true,
//                       orElse: () => false,
//                     );

//                     return Container(
//                       margin: const EdgeInsets.only(top: 20),
//                       padding: const EdgeInsets.all(24),
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(32),
//                           topRight: Radius.circular(32),
//                         ),
//                       ),
//                       child: Form(
//                         key: _formKey,
//                         child: ListView(
//                           children: [
//                             Text(
//                               'Login',
//                               style: theme.textTheme.headlineSmall?.copyWith(
//                                 fontWeight: FontWeight.w800,
//                                 color: AppColors.primary,
//                               ),
//                             ),
//                             const SizedBox(height: 6),
//                             Text(
//                               'Masuk untuk mengelola sistem',
//                               style: theme.textTheme.bodyMedium?.copyWith(
//                                 color: Colors.grey.shade600,
//                               ),
//                             ),
//                             const SizedBox(height: 24),
//                             _field(
//                               controller: emailController,
//                               label: 'Email',
//                               icon: Icons.email,
//                               keyboardType: TextInputType.emailAddress,
//                               validator: (v) {
//                                 if (v == null || v.isEmpty) {
//                                   return 'Email wajib diisi';
//                                 }
//                                 if (!v.contains('@')) return 'Email tidak valid';
//                                 return null;
//                               },
//                             ),
//                             _field(
//                               controller: passController,
//                               label: 'Password',
//                               icon: Icons.lock,
//                               obscureText: !isShowPassword,
//                               suffix: IconButton(
//                                 onPressed: () => setState(
//                                   () => isShowPassword = !isShowPassword,
//                                 ),
//                                 icon: Icon(
//                                   isShowPassword
//                                       ? Icons.visibility_off
//                                       : Icons.visibility,
//                                   color: AppColors.primary,
//                                 ),
//                               ),
//                               validator: (v) {
//                                 if (v == null || v.isEmpty) {
//                                   return 'Password wajib diisi';
//                                 }
//                                 if (v.length < 6) {
//                                   return 'Password minimal 6 karakter';
//                                 }
//                                 return null;
//                               },
//                             ),
//                             const SizedBox(height: 12),
//                             _primaryButton(
//                               text: 'Masuk',
//                               isLoading: isLoading,
//                               onTap: isLoading ? null : _submit,
//                             ),
//                             const SizedBox(height: 14),
//                             Text(
//                               'Catatan: hanya role admin / super_admin yang dapat login.',
//                               style: theme.textTheme.bodySmall?.copyWith(
//                                 color: Colors.grey.shade600,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _field({
//     required TextEditingController controller,
//     required String label,
//     required IconData icon,
//     TextInputType? keyboardType,
//     bool obscureText = false,
//     Widget? suffix,
//     String? Function(String?)? validator,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 16),
//       child: TextFormField(
//         controller: controller,
//         keyboardType: keyboardType,
//         obscureText: obscureText,
//         validator: validator,
//         decoration: InputDecoration(
//           labelText: label,
//           prefixIcon: Icon(icon, color: AppColors.primary),
//           suffixIcon: suffix,
//           filled: true,
//           fillColor: Colors.grey.shade50,
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: BorderSide.none,
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(16),
//             borderSide: const BorderSide(color: AppColors.primary, width: 2),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _primaryButton({
//     required String text,
//     required bool isLoading,
//     required VoidCallback? onTap,
//   }) {
//     return Container(
//       height: 56,
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [AppColors.primary, AppColors.secondary],
//         ),
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: AppColors.primary.withOpacity(0.25),
//             blurRadius: 16,
//             offset: const Offset(0, 8),
//           ),
//         ],
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(16),
//           onTap: onTap,
//           child: Center(
//             child: isLoading
//                 ? const CircularProgressIndicator(color: Colors.white)
//                 : Text(
//                     text,
//                     style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 17,
//                       fontWeight: FontWeight.w800,
//                       letterSpacing: 0.5,
//                     ),
//                   ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//code 2
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/data/datasource/admin_auth_local_datasource.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/admin_login_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_login/admin_login_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/pages/buttom_navbar/buttom_navbar.dart';

class AppColors {
  static const Color primary = Color(0xff3578BC);
  static const Color secondary = Color(0xff0E5CA9);
}

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({super.key});

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage>
    with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isShowPassword = false;

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeIn),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    final request = AdminLoginRequestModel(
      email: emailController.text.trim(),
      password: passwordController.text,
    );

    context.read<AdminLoginBloc>().add(AdminLoginEvent.login(request));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [AppColors.primary, AppColors.secondary],
          ),
        ),
        child: SafeArea(
          child: BlocConsumer<AdminLoginBloc, AdminLoginState>(
            listener: (context, state) async {
              state.whenOrNull(
                loaded: (data) async {
                  final token = data.data?.token;
                  if (token != null && token.isNotEmpty) {
                    await AdminAuthLocalDatasource().saveAuthData(data);
                  }
                  if (!context.mounted) return;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(data.message ?? 'Login berhasil'),
                      backgroundColor: Colors.green.shade400,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  );

                  // TODO: ganti ke AdminNavbar/DashboardAdminPage kamu
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const MainNavPage()),
                  );
                },
                error: (msg) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(msg),
                      backgroundColor: Colors.red.shade400,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  );
                },
              );
            },
            builder: (context, state) {
              final isLoading = state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );

              return FadeTransition(
                opacity: _fadeAnimation,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 22, 20, 10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.18),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              ),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                          const SizedBox(width: 14),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Warehouse Admin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Login untuk akses aplikasi admin',
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 18),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(36),
                            topRight: Radius.circular(36),
                          ),
                        ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.all(26),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                const Text(
                                  'Masuk Admin',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.primary,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Text(
                                  'Silakan login menggunakan akun role admin / super_admin.',
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(height: 26),

                                _modernTextField(
                                  controller: emailController,
                                  label: 'Email',
                                  icon: Icons.email_outlined,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (v) {
                                    if (v == null || v.isEmpty)
                                      return 'Email wajib diisi';
                                    if (!v.contains('@'))
                                      return 'Email tidak valid';
                                    return null;
                                  },
                                ),

                                _modernTextField(
                                  controller: passwordController,
                                  label: 'Password',
                                  icon: Icons.lock_outline,
                                  obscureText: !isShowPassword,
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      isShowPassword
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: AppColors.primary,
                                    ),
                                    onPressed: () => setState(
                                      () => isShowPassword = !isShowPassword,
                                    ),
                                  ),
                                  validator: (v) {
                                    if (v == null || v.isEmpty)
                                      return 'Password wajib diisi';
                                    if (v.length < 6)
                                      return 'Password minimal 6 karakter';
                                    return null;
                                  },
                                ),

                                const SizedBox(height: 10),
                                _loginButton(isLoading),
                                const SizedBox(height: 20),

                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey.shade50,
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: Colors.blueGrey.shade100,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colors.blueGrey.shade700,
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Text(
                                          'Jika akun Anda bukan role "admin/super_admin", login akan ditolak oleh API.',
                                          style: TextStyle(
                                            color: Colors.blueGrey.shade700,
                                            fontSize: 12.5,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 24),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _modernTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    TextInputType? keyboardType,
    Widget? suffixIcon,
    String? Function(String?)? validator,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: AppColors.primary),
          prefixIcon: Icon(icon, color: AppColors.primary),
          suffixIcon: suffixIcon,
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

  Widget _loginButton(bool isLoading) {
    return Container(
      width: double.infinity,
      height: 54,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.primary, AppColors.secondary],
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.28),
            blurRadius: 16,
            offset: const Offset(0, 9),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: isLoading ? null : _submit,
          child: Center(
            child: isLoading
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(color: Colors.white),
                  )
                : const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 0.3,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

class _AdminHomePlaceholder extends StatelessWidget {
  const _AdminHomePlaceholder();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('TODO: Admin Home / Admin Navbar')),
    );
  }
}
