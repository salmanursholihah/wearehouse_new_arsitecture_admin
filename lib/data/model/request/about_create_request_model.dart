import 'package:image_picker/image_picker.dart';

class AboutCreateRequestModel {
  final String title;
  final String content;
  final XFile? image; // ✅ XFile

  AboutCreateRequestModel({
    required this.title,
    required this.content,
    this.image,
  });
}