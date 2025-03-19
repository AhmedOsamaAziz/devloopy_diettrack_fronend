import 'package:flutter/material.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/shared/custom_text.dart';

class AdvertiseBarMobile extends StatelessWidget {
  const AdvertiseBarMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    return Center(
      child: Container(
          width: screenWidth * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColorsApp.AppBarColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: _buildMobileLayout(context)),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Top Row: Image and Text
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 30,
                child: Image.asset(
                  Assets.imagesAbstracdesign,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            CustomText(
              text: 'Join Our Personalized Nutrition Demo For Free',
              fontWeight: FontWeight.normal,
              fontSize: getResponsiveFontSize(context, fontSize: 9),
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 20,
              width: 15,
              child: Image.asset(
                'assets/images/icon.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 10,
              width: 13,
              child: Image.asset(
                'assets/images/arrow.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 30,
                child: Image.asset(
                  Assets.imagesAbstracdesign,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
