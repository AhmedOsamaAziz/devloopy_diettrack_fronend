import 'package:ui/constants/enums.dart';

abstract class BlogBase {
  String title;
  String titleAr;
  String description;
  String descriptionAr;
  BlogType blogType;
  String? imageUrl;
  String? videoUrl;

  BlogBase({
    required this.title,
    required this.titleAr,
    required this.description,
    required this.descriptionAr,
    required this.blogType,
    this.imageUrl,
    this.videoUrl,
  });
}
