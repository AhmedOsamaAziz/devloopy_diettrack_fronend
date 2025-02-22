import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/pricing_page/pricing_page.dart';
import 'package:ui/shared/custom_text.dart';

 
class IntroductionGetstartButton extends StatelessWidget {
  const IntroductionGetstartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: ScreenSize.isLarge
              ? 140
              : ScreenSize.isMedium
                  ? 130
                  : 120,
          height: 50,
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              color: ColorsApp.SecondaryColor,
              onPressed: () {},
              child: CustomText(
                text: 'Get Starter Today',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: getResponsiveFontSize(context, fontSize: 12),
              )),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: ScreenSize.isLarge
              ? 140
              : ScreenSize.isMedium
                  ? 130
                  : 120,
          height: 50,
          child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              color: ColorsApp.OUTLINECOLOR,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PricingPage()),
                );
              },
              child: CustomText(
                text: 'Book a Demo',
                fontSize: getResponsiveFontSize(context, fontSize: 12),
                fontWeight: FontWeight.w500,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}
