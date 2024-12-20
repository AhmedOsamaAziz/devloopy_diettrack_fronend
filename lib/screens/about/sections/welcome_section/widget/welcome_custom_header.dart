import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

import 'welcom_description.dart';
import 'welcome_title.dart';

class WelcomeCustomHeader extends StatelessWidget {
  const WelcomeCustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            right: ScreenSize.isLarge ? 40 : 20,
            left: ScreenSize.isLarge ? 40 : 20),
        padding: EdgeInsets.only(
            top: ScreenSize.isLarge ? 50 : 30,
            right: ScreenSize.isLarge ? 50 : 20,
            left: ScreenSize.isLarge ? 50 : 20),
        width: ScreenSize.isLarge
            ? 1596
            : ScreenSize.isMedium
                ? 1280
                : 358,
        height: ScreenSize.isLarge
            ? 500
            : ScreenSize.isLarge
                ? 700
                : 790,
        decoration: BoxDecoration(
            color: ColorsApp.OUTLINECOLOR,
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            const WelcomeTitle(),
            SizedBox(height: ScreenSize.isLarge ? 50 : 10),
            const Expanded(child: WelcomDescription())
          ],
        ));
  }
}
