import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/card_about.dart';
import 'package:ui/widgets/custom_text.dart';

class AboutCustomCard extends StatelessWidget {
  const AboutCustomCard({
    super.key,
    required this.cardCompanyAbout,
  });
  final CardCompanyAbout cardCompanyAbout;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: ScreenSize.isLarge
            ? 800
            : ScreenSize.isMedium
                ? 340
                : 358,
        height: ScreenSize.isLarge
            ? 900
            : ScreenSize.isMedium
                ? 229
                : 200,
        padding: EdgeInsets.all(ScreenSize.isLarge ? 20 : 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF6FBE9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: ScreenSize.isLarge ? 54 : 48,
                    width: ScreenSize.isLarge ? 54 : 48,
                    child: Image.asset(
                      cardCompanyAbout.image,
                      width: ScreenSize.isLarge ? 54 : 48,
                      height: ScreenSize.isLarge ? 54 : 48,
                    ),
                    // cardData.image,
                  ),
                ),
                SizedBox(width: ScreenSize.isLarge ? 15 : 10),
                Expanded(
                  flex: ScreenSize.isLarge ? 5 : 1,
                  child: CustomText(
                      text: cardCompanyAbout.title,
                      color: ColorsApp.MAINCOLOR,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: CustomText(
                text: cardCompanyAbout.subTitle,
                fontSize: ScreenSize.isLarge ? 18 : 14,
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
