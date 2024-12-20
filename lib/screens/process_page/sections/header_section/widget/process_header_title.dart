import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class ProcessHeaderTitle extends StatelessWidget {
  const ProcessHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your Journey to Health and Wellness',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 20),
          fontWeight: FontWeight.bold,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
