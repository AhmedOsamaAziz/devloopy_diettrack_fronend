import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class TestmonialsTitle extends StatelessWidget {
  const TestmonialsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Our Testimonals',
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.bold,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
