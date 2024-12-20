import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialDetail extends TestimonialBase {
  int? id;

  TestimonialDetail({
    this.id,
    required super.title,
    required super.description,
    required super.videoUrl,
  });
  factory TestimonialDetail.fromJson(Map<String, dynamic> json) {
    return TestimonialDetail(
      id: json["id"],
      title: json["title"],
      description: json["description"],
      videoUrl: json["videoUrl"],
    );
  }
}
