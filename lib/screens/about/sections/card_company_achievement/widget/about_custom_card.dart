import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/card_about.dart';
import 'package:ui/widgets/custom_text.dart';

class AboutCustomCard extends StatelessWidget {
  final CardCompanyAbout cardCompanyAbout;

  const AboutCustomCard({
    super.key,
    required this.cardCompanyAbout,
  });

  @override
  Widget build(BuildContext context) {
    final double width = ScreenSize.isLarge
        ? 800
        : ScreenSize.isMedium
            ? 340
            : 358;
    final double height = ScreenSize.isLarge
        ? 900
        : ScreenSize.isMedium
            ? 229
            : 200;

    return Card(
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(ScreenSize.isLarge ? 20 : 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffF6FBE9),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: ScreenSize.isLarge ? 54 : 48,
                  width: ScreenSize.isLarge ? 54 : 48,
                  child: Image.asset(
                    cardCompanyAbout.image,
                    width: ScreenSize.isLarge ? 54 : 48,
                    height: ScreenSize.isLarge ? 54 : 48,
                  ),
                ),
                SizedBox(width: ScreenSize.isLarge ? 15 : 10),
                Expanded(
                  child: CustomText(
                    text: cardCompanyAbout.title,
                    color: ColorsApp.MAINCOLOR,
                    fontWeight: FontWeight.bold,
                    fontSize: getResponsiveFontSize(context, fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: CustomText(
                text: cardCompanyAbout.subTitle,
                fontSize: getResponsiveFontSize(context, fontSize: 13),
                fontWeight: FontWeight.w500,
                color: ColorsApp.TextColorFeatures,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
