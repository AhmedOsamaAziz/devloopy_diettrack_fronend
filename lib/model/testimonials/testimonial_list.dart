// class TestimonialList {
//   final int id;
//   final String title;
//   final String description;
//   final String videoUrl;

//   TestimonialList({
//     required this.id,
//     required this.title,
//     required this.description,
//     required this.videoUrl,
//   });

//   @override
//   String toString() {
//     return 'TestimonialList{id: $id, title: $title, description: $description, videoUrl: $videoUrl,}';
//   }

//   factory TestimonialList.fromJson(Map<String, dynamic> json) {
//     return TestimonialList(
//       id: json['id'],
//       title: json['title'],
//       description: json['description'],
//       videoUrl: json['videoUrl'],
//     );
//   }
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'title': title,
//       'description': description,
//       'videoUrl': videoUrl,
//     };
//   }
// }

import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialList extends TestimonialBase {
  final int id;

  TestimonialList({
    required this.id,
    required super.title,
    required super.description,
    required super.videoUrl,
  });

  @override
  String toString() {
    return 'TestimonialList{id: $id, title: $title, description: $description, videoUrl: $videoUrl}';
  }

  factory TestimonialList.fromJson(Map<String, dynamic> json) {
    return TestimonialList(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      videoUrl: json['videoUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'videoUrl': videoUrl,
    };
  }
}
