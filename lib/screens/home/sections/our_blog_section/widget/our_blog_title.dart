import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class OurBlogTitle extends StatelessWidget {
  const OurBlogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Our Blog',
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.bold,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
