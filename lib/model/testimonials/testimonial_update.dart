import 'package:ui/model/testimonials/testimonial_base.dart';
class TestimonialUpdate extends TestimonialBase {
  final int? id;

  TestimonialUpdate({
    this.id,
    required super.title,
    required super.description,
    required super.videoUrl,
  });

  // Factory constructor to parse JSON data
  factory TestimonialUpdate.fromJson(Map<String, dynamic> json) {
    return TestimonialUpdate(
      id: json['id'], // Parse the ID from JSON
      title: json['title'], // Use the title from TestimonialBase
      description:
          json['description'], // Use the description from TestimonialBase
      videoUrl: json['videoUrl'], // Use the videoUrl from TestimonialBase
    );
  }

  // Method to serialize the object into JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id, // Include the ID in the JSON representation
      'title': title, // Include the title from TestimonialBase
      'description':
          description, // Include the description from TestimonialBase
      'videoUrl': videoUrl, // Include the videoUrl from TestimonialBase
    };
  }
}
