import 'package:ui/model/blog/blog_base.dart';

class BlogUpdate extends BlogBase {
  int id;

  BlogUpdate({
    required this.id,
    required super.title,
    required super.titleAr,
    required super.description,
    required super.descriptionAr,
    required super.blogType,
    required super.imageUrl,
    required super.videoUrl,
  });
}
