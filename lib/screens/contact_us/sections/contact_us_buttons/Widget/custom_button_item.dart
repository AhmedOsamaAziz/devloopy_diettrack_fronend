import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/url_launcher.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/contact_us_button.dart';

class CustomButtonItem extends StatelessWidget {
  const CustomButtonItem({
    super.key,
    required this.contactUsButton,
  });

  final ContactUsButton contactUsButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 350, maxHeight: 100),
      padding: const EdgeInsets.symmetric(vertical: 10),
      width: MediaQuery.sizeOf(context).width * 1 / 3,
      decoration: BoxDecoration(
        color: ColorsApp.AppBarColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              iconSize: 60,
              onPressed: () => handleButtonClick(
                  context: context,
                  url: contactUsButton.url,
                  buttonText: contactUsButton.text),
              icon: Icon(contactUsButton.icon,
                  color: ColorsApp.TitleColorFeatures,
                  size: getResponsiveFontSize(context, fontSize: 20))),
          Text(
            contactUsButton.text,
            style: TextStyle(
              fontSize: getResponsiveFontSize(context, fontSize: 12),
              fontWeight: FontWeight.w500,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
