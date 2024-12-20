import 'package:ui/model/about/about_base.dart';

class AboutUpdate extends AboutBase {
  int id;

  AboutUpdate({
    required this.id,
    required super.image,
    required super.title,
    required super.description,
    required super.date,
  });
}
