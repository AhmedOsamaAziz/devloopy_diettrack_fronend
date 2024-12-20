import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/widgets/custom_text.dart';

class IntroductionHappyCustomers extends StatelessWidget {
  const IntroductionHappyCustomers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: '430 +',
          fontSize: getResponsiveFontSize(context, fontSize: 16),
          fontWeight: FontWeight.bold,
          color: ColorsApp.NumberColor,
        ),
        const SizedBox(width: 5),
        CustomText(
          text: 'Happy Customers',
          fontSize: getResponsiveFontSize(context, fontSize: 16),
          fontWeight: FontWeight.bold,
          color: ColorsApp.TextColor,
        ),
      ],
    );
  }
}
