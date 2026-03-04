import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_about/admin_about_bloc.dart';
import 'admin_about_form_page.dart';

class AdminAboutDetailPage extends StatefulWidget {
  final int id;
  const AdminAboutDetailPage({super.key, required this.id});

  @override
  State<AdminAboutDetailPage> createState() => _AdminAboutDetailPageState();
}

class _AdminAboutDetailPageState extends State<AdminAboutDetailPage> {
  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    context.read<AdminAboutBloc>().add(AdminAboutEvent.getDetail(widget.id));
  }

  Future<void> _edit() async {
    final ok = await Navigator.push<bool>(
      context,
      MaterialPageRoute(builder: (_) => AdminAboutFormPage(aboutId: widget.id)),
    );
    if (ok == true) _load();
  }

  void _delete() {
    context.read<AdminAboutBloc>().add(AdminAboutEvent.delete(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text('Detail About'),
        actions: [
          IconButton(onPressed: _edit, icon: const Icon(Icons.edit)),
          IconButton(onPressed: _delete, icon: const Icon(Icons.delete_outline)),
        ],
      ),
      body: BlocBuilder<AdminAboutBloc, AdminAboutState>(
        builder: (context, state) {
          final loading = state.maybeWhen(detailLoading: () => true, orElse: () => false);
          final item = state.maybeWhen(detailLoaded: (x) => x, orElse: () => null);

          if (loading && item == null) return const Center(child: CircularProgressIndicator());
          if (item == null) return const Center(child: Text('Data tidak ditemukan'));

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (item.imageUrl != null && item.imageUrl!.isNotEmpty)
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(item.imageUrl!, height: 190, fit: BoxFit.cover),
                )
              else
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Center(child: Icon(Icons.image_not_supported)),
                ),
              const SizedBox(height: 14),
              Text(item.safeTitle, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w900)),
              const SizedBox(height: 8),
              Text(item.safeContent),
            ],
          );
        },
      ),
    );
  }
}