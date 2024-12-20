import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

class TestmonialsTitle extends StatelessWidget {
  const TestmonialsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Our Testimonals',
      style: TextStyle(
        fontSize: ScreenSize.isLarge ? 40 : 32,
        fontWeight: FontWeight.bold,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
