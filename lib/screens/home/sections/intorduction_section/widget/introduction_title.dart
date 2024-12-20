import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/custom_text.dart';

class IntroductionTitle extends StatelessWidget {
  const IntroductionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: "Transform your ",
              fontWeight: FontWeight.bold,
            ),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            CustomText(
              text: " health with",
              fontWeight: FontWeight.bold,
            )
          ],
        ),
        SizedBox(
          width: ScreenSize.isLarge ? 360 : 200,
          child: const Divider(
            color: ColorsApp.SecondaryColor,
            thickness: 3,
          ),
        ),
        CustomText(
          text: 'Personalized Nutrition Coaching',
          color: ColorsApp.MAINCOLOR,
          fontWeight: FontWeight.w800,
          fontFamily: 'Urbanist',
          fontSize: getResponsiveFontSize(context, fontSize: 40),
        ),
      ],
    );
  }
}
