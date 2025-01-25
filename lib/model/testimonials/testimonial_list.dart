class TestimonialList {
  final int id;
  final String title;
  final String description;
  final String videoUrl;

  TestimonialList({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
  });

  // factory TestimonialList.fromJson(Map<String, dynamic> json) {
  //   return TestimonialList(
  //     id: json['id'] ?? 0,
  //     title: json['title'] ?? '',
  //     description: json['description'] ?? '',
  //     videoUrl: json['videoUrl'] ?? '',
  //   );
  // }
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
