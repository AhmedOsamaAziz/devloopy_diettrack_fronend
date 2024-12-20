import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/contact_us_button.dart';

class CustomButtonItem extends StatelessWidget {
  const CustomButtonItem({super.key, required this.contactUsButton});

  final ContactUsButton contactUsButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 141,
      width: MediaQuery.sizeOf(context).width * 1 / 3.9,
      decoration: BoxDecoration(
        color: ColorsApp.AppBarColor,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            contactUsButton.icon,
            color: ColorsApp.TitleColorFeatures,
            size: getResponsiveFontSize(context, fontSize: 30),
            weight: 34,
          ),
          const SizedBox(height: 20),
          Text(
            contactUsButton.text,
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 16),
              fontWeight: FontWeight.w500,
              fontFamily: FontsApp.fontFamilyUrbanist,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
