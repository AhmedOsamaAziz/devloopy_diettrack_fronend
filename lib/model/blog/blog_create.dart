// import 'package:ui/constants/enums.dart';
// import 'package:ui/model/blog/blog_base.dart';

// class BlogCreate extends BlogBase {
//   BlogCreate({
//     required super.title,
//     required super.titleAr,
//     required super.description,
//     required super.descriptionAr,
//     required super.blogType,
//     super.imageUrl,
//     super.videoUrl,
//   });

//   // Convert JSON to BlogCreate object
//   factory BlogCreate.fromJson(Map<String, dynamic> json) {
//     return BlogCreate(
//       title: json['title'] as String,
//       titleAr: json['titleAr'] as String,
//       description: json['description'] as String,
//       descriptionAr: json['descriptionAr'] as String,
//       blogType:
//           BlogType.values.firstWhere((e) => e.toString() == json['blogType']),
//       imageUrl: json['imageUrl'] as String?,
//       videoUrl: json['videoUrl'] as String?,
//     );
//   }

//   // Convert BlogCreate object to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'title': title,
//       'titleAr': titleAr,
//       'description': description,
//       'descriptionAr': descriptionAr,
//       'blogType': blogType.toString(),
//       'imageUrl': imageUrl,
//       'videoUrl': videoUrl,
//     };
//   }
// }

import 'package:ui/constants/enums.dart';
import 'package:ui/model/blog/blog_base.dart';

class BlogCreate extends BlogBase {
  final int groupId;
  final String authorId;

  BlogCreate({
    required super.title,
    required super.titleAr,
    required super.description,
    required super.descriptionAr,
    required super.blogType,
    super.imageUrl,
    super.videoUrl,
    required this.groupId,
    required this.authorId,
  });

  // تحويل JSON إلى كائن BlogCreate
  factory BlogCreate.fromJson(Map<String, dynamic> json) {
    return BlogCreate(
      title: json['title'] as String,
      titleAr: json['titleAr'] as String,
      description: json['description'] as String,
      descriptionAr: json['descriptionAr'] as String,
      blogType: json['blogType'] != null
          ? BlogType.values[json['blogType'] as int]
          : BlogType.article, // قيمة افتراضية إذا كانت null
      imageUrl: json['ImageUrl'] as String?,
      videoUrl: json['videoURL'] as String?,
      groupId:
          json['GroupId'] != null ? json['GroupId'] as int : 0, // قيمة افتراضية
      authorId: json['AuthorId'] as String? ?? '', // تأكد من وجود قيمة
    );
  }

  // تحويل الكائن إلى JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'titleAr': titleAr,
      'description': description,
      'descriptionAr': descriptionAr,
      'blogType': blogType.index,
      'GroupId': groupId,
      'ImageUrl': imageUrl,
      'videoURL': videoUrl,
      'AuthorId': authorId,
    };
  }
}
