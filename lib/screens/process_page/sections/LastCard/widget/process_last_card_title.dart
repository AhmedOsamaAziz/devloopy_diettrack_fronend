import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/widgets/custom_text.dart';

class ProcessLastCardTitle extends StatelessWidget {
  const ProcessLastCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      text:
          'Are you ready to embark on a transformative journey towards better health and wellness?',
      fontWeight: FontWeight.w700,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: ColorsApp.MAINCOLOR,
    );
  }
}
