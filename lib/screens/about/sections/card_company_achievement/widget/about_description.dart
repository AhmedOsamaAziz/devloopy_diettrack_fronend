import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';

class AboutDescription extends StatelessWidget {
  const AboutDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "At Nutritionist, we take pride in our accomplishments and the positive impact we have made on the lives of our . Here are some of our notable achievements",
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 14),
          fontWeight: FontWeight.normal),
    );
  }
}
