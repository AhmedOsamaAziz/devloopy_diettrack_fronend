import 'package:flutter/material.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/widgets/custom_text.dart';

class IntroductionDescription extends StatelessWidget {
  const IntroductionDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text:
          "Welcome to Nutritionist, your partner in achieving optimal health through personalized nutrition coaching. Our certified nutritionists are here to guide you on your weight loss journey, providing customized plans and ongoing support. Start your transformation today and experience tpower of personalized nutrition coaching.",
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveFontSize(context, fontSize: 13),
    );
  }
}
