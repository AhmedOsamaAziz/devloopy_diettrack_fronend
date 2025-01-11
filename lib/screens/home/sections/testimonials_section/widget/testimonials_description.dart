import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class TestmonialsDescription extends StatelessWidget {
  const TestmonialsDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Our satisfied clients share their success stories and experiences on their journey to better health and well-being.",
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
