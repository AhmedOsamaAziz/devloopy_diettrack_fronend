// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ui/model/about/about_base.dart';

class AboutCreate extends AboutBase {
  int aboutId;

  AboutCreate({
    required this.aboutId,
    required super.image,
    required super.title,
    required super.description,
    required super.date,
  });
  factory AboutCreate.fromJson(Map<String, dynamic> json) {
    return AboutCreate(
      aboutId: json['id'],
      image: json['image'],
      title: json['title'],
      description: json['description'],
      date: DateTime.parse(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'description': description,
      'date': date.toString(),
    };
  }
}
