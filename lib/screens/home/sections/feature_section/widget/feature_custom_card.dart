import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/card_features.dart';
import 'package:ui/widgets/custom_text.dart';

class FeatureCustomCard extends StatelessWidget {
  const FeatureCustomCard({super.key, required this.card});

  final CardFeatures card;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: ScreenSize.isLarge ? 0.3 : 0.1,
      child: Container(
        height: ScreenSize.isLarge
            ? 300
            : ScreenSize.isMedium
                ? 253
                : 229,
        width: ScreenSize.isLarge
            ? 650
            : ScreenSize.isMedium
                ? 400
                : 300,
        padding: EdgeInsets.all(ScreenSize.isLarge ? 20 : 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffF6FBE9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  height: ScreenSize.isLarge
                      ? 54
                      : ScreenSize.isMedium
                          ? 48
                          : 40,
                  width: ScreenSize.isLarge
                      ? 54
                      : ScreenSize.isMedium
                          ? 48
                          : 40,
                  child: Image.asset(
                    card.image,
                    height: ScreenSize.isLarge
                        ? 54
                        : ScreenSize.isMedium
                            ? 48
                            : 45,
                    width: ScreenSize.isLarge
                        ? 54
                        : ScreenSize.isMedium
                            ? 48
                            : 45,
                  ),
                ),
                SizedBox(width: ScreenSize.isLarge ? 20 : 10),
                Expanded(
                  child: CustomText(
                      text: card.title,
                      color: ColorsApp.MAINCOLOR,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenSize.isLarge
                          ? 24
                          : ScreenSize.isMedium
                              ? 16
                              : 14),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: CustomText(
                text: card.subTitle,
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
