import 'package:ui/model/about/about_base.dart';

class AboutList extends AboutBase {
  int id;

  AboutList({
    required this.id,
    required super.image,
    required super.title,
    required super.description,
    required super.date,
  });
  factory AboutList.fromJson(Map<String, dynamic> json) => AboutList(
        id: json['id'],
        image: json['image'],
        title: json['title'],
        description: json['description'],
        date: DateTime.parse(json['date']),
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'title': title,
        'description': description,
        'date': date.toIso8601String(),
      };

  void add(Map<String, Object?> map) {}
}
