import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';

class OurStoryDescription extends StatelessWidget {
  const OurStoryDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Welcome to Nutritionist, your partner in achieving optimal health through personalized nutrition coaching.Our certified nutritionists are here to guide you on your weight loss journey.",
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 14),
          fontWeight: FontWeight.w500),
    );
  }
}
