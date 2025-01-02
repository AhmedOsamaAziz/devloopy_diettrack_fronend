import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/core/url_launcher.dart';
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
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.sizeOf(context).width * 1 / 3.9,
      decoration: BoxDecoration(
        color: ColorsApp.AppBarColor,
        borderRadius: BorderRadius.circular(2.0),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
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
              fontSize: getResponsiveFontSize(context, fontSize: 10),
              fontWeight: FontWeight.w500,
              color: const Color(0xFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}
