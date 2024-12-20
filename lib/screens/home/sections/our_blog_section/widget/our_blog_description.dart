import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

class OurBlogDescription extends StatelessWidget {
  const OurBlogDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Our satisfied clients share their success stories and experiences on their journey to better health and well-being.",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: ScreenSize.isLarge ? 22 : 18,
        fontWeight: FontWeight.w500,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
