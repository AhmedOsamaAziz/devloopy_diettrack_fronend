// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ui/model/about/about_base.dart';

class AboutDelete extends AboutBase {
  int id;
  AboutDelete({
    required this.id,
    required super.image,
    required super.title,
    required super.description,
    required super.date,
  });
}
