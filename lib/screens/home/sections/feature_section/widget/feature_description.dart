import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class FeatureDescription extends StatelessWidget {
  const FeatureDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Welcome to the Feature Section of Nutritionist, your ultimate destination for all things nutrition and wellness.",
      style: TextStyle(
        textBaseline: TextBaseline.alphabetic,
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w500,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
