import 'package:ui/model/about/about_base.dart';

class AboutRead extends AboutBase {
  DateTime createAt;

  AboutRead({
    required this.createAt,
    required super.image,
    required super.title,
    required super.description,
    required super.date,
  });
}
