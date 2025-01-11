import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class FeatureTitle extends StatelessWidget {
  const FeatureTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Features',
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontWeight: FontWeight.bold,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
