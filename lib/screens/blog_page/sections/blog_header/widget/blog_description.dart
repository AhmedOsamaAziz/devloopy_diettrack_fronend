import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class BlogDescription extends StatelessWidget {
  const BlogDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      "Welcome to the Blog section of Nutritionist, your trusted source for insightful articles, tips, and expert advice on nutrition and wellness. Here, we strive to provide you with engaging and informative content that will inspire and empower you to make informed decisions about your health. Explore our blog to discover a wealth of resources that cover a wide range of topics related to nutrition, fitness, and overall well-being.",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontWeight: FontWeight.w400,
        color: ColorsApp.MAINCOLOR,
      ),
    );
  }
}
