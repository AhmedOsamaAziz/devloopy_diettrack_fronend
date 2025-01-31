import 'package:ui/constants/enums.dart';

class BlogCreate {
  final String id;
  final String title;
  final String titleAr;
  final String description;
  final String descriptionAr;
  final BlogType blogType;
  final String? imageUrl;
  final String? videoUrl;

  BlogCreate({
    required this.id,
    required this.title,
    required this.titleAr,
    required this.description,
    required this.descriptionAr,
    required this.blogType,
    this.imageUrl,
    this.videoUrl,
  });

  // Convert JSON to BlogCreate object
  factory BlogCreate.fromJson(Map<String, dynamic> json) {
    return BlogCreate(
      id: json['id'] as String,
      title: json['title'] as String,
      titleAr: json['titleAr'] as String,
      description: json['description'] as String,
      descriptionAr: json['descriptionAr'] as String,
      blogType:
          BlogType.values.firstWhere((e) => e.toString() == json['blogType']),
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );
  }

  // Convert BlogCreate object to JSON
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
