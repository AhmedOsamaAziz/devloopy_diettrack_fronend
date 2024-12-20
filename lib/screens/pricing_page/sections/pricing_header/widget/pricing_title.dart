import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class PricingTitle extends StatelessWidget {
  const PricingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Our Pricing',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 30),
          fontWeight: FontWeight.w500,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
