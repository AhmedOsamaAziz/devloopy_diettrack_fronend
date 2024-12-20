import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';

class ProcessHeaderDescription extends StatelessWidget {
  const ProcessHeaderDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      textAlign: TextAlign.center,
      "At Nutritionist, we believe in a personalized and comprehensive approach to help you achieve your health and wellness goals. Our How it Works process is designed to guide you through each step of your journey, ensuring that you receive the support, knowledge, and tools you need to succeed. Here's a detailed breakdown of our process",
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
