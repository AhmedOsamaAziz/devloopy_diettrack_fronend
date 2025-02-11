import 'package:ui/constants/enums.dart';
import 'package:ui/model/blog/blog_base.dart';

class BlogUpdate extends BlogBase {
  int id;
  int groupId;

  BlogUpdate({
    required this.id,
    required this.groupId,
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
      id: json['id'] != null ? json['id'] as int : 0,
      groupId: json['GroupId'] != null ? json['GroupId'] as int : 0,
      title: json['title'] as String? ?? "",
      titleAr: json['titleAr'] as String? ?? "",
      description: json['description'] as String? ?? "",
      descriptionAr: json['descriptionAr'] as String? ?? "",
      blogType: json['blogType'] != null
          ? BlogType.values[json['blogType'] as int]
          : BlogType.article, // قيمة افتراضية
      imageUrl: json['imageUrl'] as String? ?? "",
      videoUrl: json['videoURL'] as String? ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'GroupId': groupId,
      'title': title,
      'titleAr': titleAr,
      'description': description,
      'descriptionAr': descriptionAr,
      'blogType': blogType.index,
      'imageUrl': imageUrl,
      'videoURL': videoUrl,
    };
  }
}
