import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/widgets/custom_text.dart';

class ProcssLastCardDescription extends StatelessWidget {
  const ProcssLastCardDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text:
          "Join us at Nutritionist and let us guide you on the path to a healthier and happier you.",
      fontFamily: FontsApp.fontFamilyUrbanist,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w500,
      color: const Color(0xff333333),
    );
  }
}
