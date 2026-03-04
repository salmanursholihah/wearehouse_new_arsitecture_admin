import 'package:image_picker/image_picker.dart';

class AboutUpdateRequestModel {
  final String title;
  final String content;
  final XFile? image; // ✅ XFile

  AboutUpdateRequestModel({
    required this.title,
    required this.content,
    this.image,
  });
}