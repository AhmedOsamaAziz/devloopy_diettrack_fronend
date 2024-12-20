import 'package:ui/model/blog/blog_base.dart';
import 'package:ui/model/comments/comment_read.dart';

class BlogDetails extends BlogBase {
  int id;
  DateTime publishDate;
  List<CommentRead>? comments;

  BlogDetails({
    required this.id,
    required this.publishDate,
    this.comments,
    required super.title,
    required super.titleAr,
    required super.description,
    required super.descriptionAr,
    required super.blogType,
    required super.imageUrl,
    required super.videoUrl,
  });

  factory BlogDetails.fromJson(Map<String, dynamic> json) {
    return BlogDetails(
      id: json['id'],
      publishDate: DateTime.parse(json['publishDate']),
      title: json['title'],
      titleAr: json['titleAr'],
      description: json['description'],
      descriptionAr: json['descriptionAr'],
      blogType: json['blogType'],
      imageUrl: json['imageUrl'],
      videoUrl: json['videoUrl'],
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
      };
}
