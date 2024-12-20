import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialList extends TestimonialBase {
  int? id;

  TestimonialList({
    this.id,
    required super.title,
    required super.description,
    required super.videoUrl,
  });

  factory TestimonialList.fromJson(Map<String, dynamic> json) {
    return TestimonialList(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      videoUrl: json["videoUrl"],
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
