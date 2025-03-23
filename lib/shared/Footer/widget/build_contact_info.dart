import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/shared/custom_text.dart';

class BuildContactInfo extends StatelessWidget {
  const BuildContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              _buildContactItem(Icons.mail, "Ahmed.Madkour@gmail.com", context),
              _buildContactItem(Icons.phone, "+002000020200", context),
              _buildContactItem(
                  Icons.location_on, "SomeWhere in the World", context),
              _buildContactItem(Icons.copyright,
                  "2024 DevLoopy.com.All rights reserved", context),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              _buildContactItem(Icons.mail, "Ahmed.Madkour@gmail.com", context),
              _buildContactItem(Icons.phone, "+002000020200", context),
              _buildContactItem(
                  Icons.location_on, "SomeWhere in the World", context),
              _buildContactItem(Icons.copyright,
                  "2024 DevLoopy.com.All rights reserved", context),
            ],
          );
  }
}

Widget _buildContactItem(IconData icon, String text, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Container(
      width: 300,
      height: 30,
      decoration: BoxDecoration(
          color: ColorsApp.AppBarColor, borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 5),
          CustomText(
              text: text,
              color: Colors.white,
              fontSize: getResponsiveFontSize(context, fontSize: 12)),
        ],
      ),
    ),
  );
}
