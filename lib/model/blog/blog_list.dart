import 'package:ui/core/enums.dart';
import 'package:ui/model/blog/blog_base.dart';
import 'package:ui/model/blog_group/blog_group.dart';

class BlogList extends BlogBase {
  int id;
  DateTime publishDate;

  BlogList({
    required this.id,
    required this.publishDate,
    required super.title,
    required super.titleAr,
    required super.description,
    required super.descriptionAr,
    required super.blogType,
    super.imageUrl,
    super.videoUrl,
    required BlogGroup group,
  });
  factory BlogList.fromJson(Map<String, dynamic> json) {
    return BlogList(
      id: json['id'],
      publishDate: DateTime.parse(json['publishDate']),
      title: json['title'],
      titleAr: json['titleAr'],
      description: json['description'],
      descriptionAr: json['descriptionAr'],
      blogType: BlogType.values[json['blogType']],
      imageUrl: json['imageUrl'],
      videoUrl: json['videoUrl'],
      group: BlogGroup.fromJson(json['group']),
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'publishDate': publishDate.toIso8601String(),
        'title': title,
        'titleAr': titleAr,
        'description': description,
        'descriptionAr': descriptionAr,
        'blogType': blogType,
        'imageUrl': imageUrl,
        'videoUrl': videoUrl,
        //! 'group': group.toJson(),
      };
}
