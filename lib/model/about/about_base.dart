// ignore_for_file: public_member_api_docs, sort_constructors_first
class AboutBase {
  String image;
  String title;
  String description;
  DateTime date;

  AboutBase({
    required this.image,
    required this.title,
    required this.description,
    required this.date,
  });
  factory AboutBase.fromJson(Map<String, dynamic> json) {
    return AboutBase(
      image: json['image'],
      title: json['title'],
      description: json['description'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'description': description,
      'date': date.toString(),
    };
  }
}
