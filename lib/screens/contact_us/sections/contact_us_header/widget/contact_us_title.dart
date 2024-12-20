import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';

class ContactUsTitle extends StatelessWidget {
  const ContactUsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Contact Us',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 25),
          fontWeight: FontWeight.w400,
          color: ColorsApp.MAINCOLOR),
    );
  }
}
