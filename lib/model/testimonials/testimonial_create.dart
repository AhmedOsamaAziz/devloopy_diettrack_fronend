import 'package:ui/model/testimonials/testimonial_base.dart';

class TestimonialCreate extends TestimonialBase {
  final String id; // Add an ID field

  TestimonialCreate({
    required this.id, // Include the ID in the constructor
    required super.title,
    required super.description,
    required super.videoUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id, // Include the ID in the JSON representation
      'title': title,
      'description': description,
      'videoUrl': videoUrl,
    };
  }

  factory TestimonialCreate.fromJson(Map<String, dynamic> json) {
    return TestimonialCreate(
      id: json['id'], // Parse the ID from JSON
      title: json['title'],
      description: json['description'],
      videoUrl: json['videoUrl'],
    );
  }
}
