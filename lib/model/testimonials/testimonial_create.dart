import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialCreate extends TestimonialBase {
  int? id;

  TestimonialCreate({
    required this.id,
    required super.title,
    required super.description,
    required super.videoUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'videoUrl': videoUrl,
    };
  }

  factory TestimonialCreate.fromJson(Map<String, dynamic> json) {
    return TestimonialCreate(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      videoUrl: json['videoUrl'],
    );
  }
}
