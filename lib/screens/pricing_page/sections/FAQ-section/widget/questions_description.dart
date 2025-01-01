import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';

class QuestionsDescription extends StatelessWidget {
  const QuestionsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "We address commonly asked questions and provide comprehensive answers to help you navigate your way through your nutrition and wellness journey.",
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 13),
          fontWeight: FontWeight.w500),
    );
  }
}
