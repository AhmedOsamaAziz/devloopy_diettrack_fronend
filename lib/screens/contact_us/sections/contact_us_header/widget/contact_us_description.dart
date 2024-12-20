import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';

class ContactUsDescription extends StatelessWidget {
  const ContactUsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.isLarge && ScreenSize.isMedium ? 30 : 12),
      child: Text(
        textAlign: TextAlign.center,
        "We value your feedback, questions, and concerns at Nutritionist. Our dedicated team is here to assist you and provide the support you need onyour nutritional journey. Please don't hesitate to reach out to us using any of the following contact methods.",
        style: TextStyle(
            fontSize: getResponsiveFontSize(context, fontSize: 14),
            fontWeight: FontWeight.w400,
            color: ColorsApp.MAINCOLOR),
      ),
    );
  }
}
