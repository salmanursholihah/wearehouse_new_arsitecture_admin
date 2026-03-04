import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/about_create_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/data/model/request/about_update_request_model.dart';
import 'package:wearehouse_new_arsitecture_admin/presentation/bloc/admin_about/admin_about_bloc.dart';

class AdminAboutFormPage extends StatefulWidget {
  final int? aboutId;
  const AdminAboutFormPage({super.key, this.aboutId});

  @override
  State<AdminAboutFormPage> createState() => _AdminAboutFormPageState();
}

class _AdminAboutFormPageState extends State<AdminAboutFormPage> {
  final _formKey = GlobalKey<FormState>();
  final titleC = TextEditingController();
  final contentC = TextEditingController();

  XFile? _image;
  String? _existingImageUrl;

  bool get isEdit => widget.aboutId != null;

  @override
  void initState() {
    super.initState();
    if (isEdit) {
      context.read<AdminAboutBloc>().add(AdminAboutEvent.getDetail(widget.aboutId!));
    }
  }

  @override
  void dispose() {
    titleC.dispose();
    contentC.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final x = await ImagePicker().pickImage(source: ImageSource.gallery, imageQuality: 85);
    if (x == null) return;
    setState(() => _image = x);
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;

    if (isEdit) {
      context.read<AdminAboutBloc>().add(
            AdminAboutEvent.update(
              id: widget.aboutId!,
              request: AboutUpdateRequestModel(
                title: titleC.text.trim(),
                content: contentC.text.trim(),
                image: _image,
              ),
            ),
          );
    } else {
      context.read<AdminAboutBloc>().add(
            AdminAboutEvent.create(
              AboutCreateRequestModel(
                title: titleC.text.trim(),
                content: contentC.text.trim(),
                image: _image,
              ),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(title: Text(isEdit ? 'Edit About' : 'Create About')),
      body: BlocConsumer<AdminAboutBloc, AdminAboutState>(
        listener: (context, state) {
          state.whenOrNull(
            detailLoaded: (item) {
              if (!isEdit || item == null) return;
              titleC.text = item.title ?? '';
              contentC.text = item.content ?? '';
              _existingImageUrl = item.imageUrl;
              setState(() {});
            },
            actionSuccess: (_) => Navigator.pop(context, true),
            actionError: (msg) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(msg), backgroundColor: Colors.red),
            ),
          );
        },
        builder: (context, state) {
          final loading = state.maybeWhen(
            actionLoading: () => true,
            detailLoading: () => isEdit,
            orElse: () => false,
          );

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(18),
                onTap: _pickImage,
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: _image != null
                        ? Image.network(_image!.path, fit: BoxFit.cover) // preview sederhana
                        : (_existingImageUrl != null && _existingImageUrl!.isNotEmpty)
                            ? Image.network(_existingImageUrl!, fit: BoxFit.cover)
                            : const Center(child: Icon(Icons.add_a_photo_outlined, size: 32)),
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: titleC,
                      decoration: const InputDecoration(labelText: 'Title'),
                      validator: (v) => (v == null || v.trim().isEmpty) ? 'Title wajib' : null,
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      controller: contentC,
                      maxLines: 6,
                      decoration: const InputDecoration(labelText: 'Content'),
                      validator: (v) => (v == null || v.trim().isEmpty) ? 'Content wajib' : null,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: loading ? null : _submit,
                        child: loading
                            ? const CircularProgressIndicator()
                            : Text(isEdit ? 'Update' : 'Create'),
                      ),
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
}