import 'package:ui/constants/enums.dart';
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
  factory BlogUpdate.fromJson(Map<String, dynamic> json) {
    return BlogUpdate(
      id: json['id'],
      title: json['title'],
      titleAr: json['titleAr'],
      description: json['description'],
      descriptionAr: json['descriptionAr'],
      blogType:
          BlogType.values.firstWhere((e) => e.toString() == json['blogType']),
      imageUrl: json['imageUrl'],
      videoUrl: json['videoUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'titleAr': titleAr,
      'description': description,
      'descriptionAr': descriptionAr,
      'blogType': blogType.toString(),
      'imageUrl': imageUrl,
      'videoUrl': videoUrl,
    };
  }
}
