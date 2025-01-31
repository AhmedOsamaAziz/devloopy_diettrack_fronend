import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialCreate extends TestimonialBase {
  TestimonialCreate({
    required super.title,
    required super.description,
    required super.videoUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'videoUrl': videoUrl,
    };
  }

  factory TestimonialCreate.fromJson(Map<String, dynamic> json) {
    return TestimonialCreate(
      title: json['title'],
      description: json['description'],
      videoUrl: json['videoUrl'],
    );
  }
}
