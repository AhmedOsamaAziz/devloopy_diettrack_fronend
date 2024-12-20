// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  String? fontFamily;
  final Color? color;

  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function()? onTap;

  CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontFamily,
    this.fontSize = 20,
    this.fontWeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(text,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
          )),
    );
  }
}
