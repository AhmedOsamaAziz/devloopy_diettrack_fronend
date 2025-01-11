import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Welcome to Nutritions ',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 24),
          fontWeight: FontWeight.w600,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
