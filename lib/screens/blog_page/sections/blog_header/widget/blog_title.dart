import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class BlogTitle extends StatelessWidget {
  const BlogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Our Blog',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 24),
          fontWeight: FontWeight.w700,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
