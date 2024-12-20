import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class PricingDescription extends StatelessWidget {
  const PricingDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "At Nutritionist, we offer flexible pricing options to accommodate your unique requirements and budget. Our goal is to provide you with exceptional personalized nutrition coaching that is accessible and tailored to your needs. Choose from our three plans below and take the first step towards a healthier lifestyle",
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 16),
          fontWeight: FontWeight.w400,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
