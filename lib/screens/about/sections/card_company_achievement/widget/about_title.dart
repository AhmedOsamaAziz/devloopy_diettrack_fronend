import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';

class AboutTitle extends StatelessWidget {
  const AboutTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Company Achievements',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 24),
          fontWeight: FontWeight.bold),
    );
  }
}
