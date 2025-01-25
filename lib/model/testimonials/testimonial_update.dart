import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialUpdate extends TestimonialBase {
  final String id; // Add ID field

  TestimonialUpdate({
    required this.id, // Include in constructor
    required super.title,
    required super.description,
    required super.videoUrl,
  });

  factory TestimonialUpdate.fromJson(Map<String, dynamic> json) {
    return TestimonialUpdate(
      id: json['id'], // Extract ID from JSON
      title: json['title'],
      description: json['description'],
      videoUrl: json['videoUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id, // Include ID in JSON
        'title': title,
        'description': description,
        'videoUrl': videoUrl,
      };
}
