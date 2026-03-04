import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_about/admin_about_bloc.dart';
import 'admin_about_form_page.dart';
import 'admin_about_detail_page.dart';

class AdminAboutListPage extends StatefulWidget {
  const AdminAboutListPage({super.key});

  @override
  State<AdminAboutListPage> createState() => _AdminAboutListPageState();
}

class _AdminAboutListPageState extends State<AdminAboutListPage> {
  @override
  void initState() {
    super.initState();
    context.read<AdminAboutBloc>().add(const AdminAboutEvent.getList());
  }

  void _reload() {
    context.read<AdminAboutBloc>().add(const AdminAboutEvent.getList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: const Text('About Us')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final ok = await Navigator.push<bool>(
            context,
            MaterialPageRoute(builder: (_) => const AdminAboutFormPage()),
          );
          if (ok == true) _reload();
        },
        child: const Icon(Icons.add),
      ),
      body: BlocConsumer<AdminAboutBloc, AdminAboutState>(
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
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            listLoaded: (items) {
              if (items.isEmpty)
                return const Center(child: Text('Belum ada About'));

              return RefreshIndicator(
                onRefresh: () async => _reload(),
                child: ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10),
                  itemBuilder: (context, i) {
                    final about = items[i];
                    return InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              AdminAboutDetailPage(id: about.id ?? 0),
                        ),
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
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                width: 56,
                                height: 56,
                                color: Colors.grey.shade200,
                                child:
                                    (about.imageUrl == null ||
                                        about.imageUrl!.isEmpty)
                                    ? const Icon(Icons.image_not_supported)
                                    : Image.network(
                                        about.imageUrl!,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    about.safeTitle,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    about.safeContent,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      color: Color(0xFF7B8191),
                                    ),
                                  ),
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
            },
            error: (msg) => Center(child: Text(msg)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
