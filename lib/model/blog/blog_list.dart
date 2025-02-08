import 'package:ui/constants/enums.dart';
import 'package:ui/model/blog/blog_base.dart';
import 'package:ui/model/blog_group/blog_group.dart';

class BlogList extends BlogBase {
  int id;
  DateTime publishDate;
  BlogGroup group;
  String? author;

  BlogList(
      {required this.id,
      required this.publishDate,
      required super.title,
      required super.titleAr,
      required super.description,
      required super.descriptionAr,
      required super.blogType,
      super.imageUrl,
      super.videoUrl,
      required this.group,
      this.author});

  factory BlogList.fromJson(Map<String, dynamic> json) {
    return BlogList(
        id: json['id'] as int,
        publishDate: DateTime.parse(json['publishDate'] as String),
        title: json['title'] as String,
        titleAr: json['titleAr'] as String,
        description: json['description'] as String,
        descriptionAr: json['descriptionAr'] as String,
        blogType: BlogType.values[json['blogType'] as int],
        imageUrl: json['imageUrl'] as String?,
        videoUrl: json['videoUrl'] as String?,
        group: BlogGroup.fromJson(json['group'] as Map<String, dynamic>),
        author: json['author'] as String?);
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'publishDate': publishDate.toIso8601String(),
        'title': title,
        'titleAr': titleAr,
        'description': description,
        'descriptionAr': descriptionAr,
        'blogType': blogType.index,
        'imageUrl': imageUrl,
        'videoUrl': videoUrl,
        'group': group.toJson(),
        'author': author,
      };
}
