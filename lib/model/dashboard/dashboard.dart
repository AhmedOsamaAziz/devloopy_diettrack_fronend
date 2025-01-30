import 'package:ui/constants/enums.dart';

class DashBoardCreate {
  final String id;
  final String title;
  final String titleAr;
  final String description;
  final String descriptionAr;
  final BlogType blogType;
  final String? imageUrl;
  final String? videoUrl;

  DashBoardCreate({
    required this.id,
    required this.title,
    required this.titleAr,
    required this.description,
    required this.descriptionAr,
    required this.blogType,
    this.imageUrl,
    this.videoUrl,
  });

  // Method to convert from JSON
  factory DashBoardCreate.fromJson(Map<String, dynamic> json) {
    return DashBoardCreate(
      id: json['id'] as String,
      title: json['title'] as String,
      titleAr: json['titleAr'] as String,
      description: json['description'] as String,
      descriptionAr: json['descriptionAr'] as String,
      blogType: BlogType.values.firstWhere(
        (e) => e.toString() == json['blogType'],
        orElse: () => BlogType.article,
      ),
      imageUrl: json['imageUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
    );
  }

  // Method to convert to JSON
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

  // Override toString method for better debug prints
  @override
  String toString() {
    return 'BlogCreate{id: $id, title: $title, titleAr: $titleAr, description: $description, blogType: $blogType, imageUrl: $imageUrl, videoUrl: $videoUrl}';
  }
}
