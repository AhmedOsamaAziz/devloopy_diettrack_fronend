import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';

class TeamPageDescription extends StatelessWidget {
  const TeamPageDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      textAlign: TextAlign.center,
      "Our team at Nutritionist is composed of highly skilled professionals who are passionate about helping you achieve your health and wellness goals. With a diverse range of expertise in nutrition, coaching, and support, our team is dedicated to providing you with the guidance and personalized care you need. Get to know the experts behind our success and discover how they can make a positive impact on your journey to better health.",
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
