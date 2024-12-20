import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialUpdate extends TestimonialBase {
  int? id;

  TestimonialUpdate({
    this.id,
    required super.title,
    required super.description,
    required super.videoUrl,
  });
}
