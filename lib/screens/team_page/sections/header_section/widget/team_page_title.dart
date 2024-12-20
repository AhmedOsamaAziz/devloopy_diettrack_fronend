import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class TeamPageTitle extends StatelessWidget {
  const TeamPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Meet Our Team of Experts',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 30),
          fontWeight: FontWeight.w400,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
