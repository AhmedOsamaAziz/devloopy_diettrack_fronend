import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

class OurBlogTitle extends StatelessWidget {
  const OurBlogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Our Blog',
      style: TextStyle(
        fontSize: ScreenSize.isLarge ? 48 : 26,
        fontWeight: FontWeight.bold,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
