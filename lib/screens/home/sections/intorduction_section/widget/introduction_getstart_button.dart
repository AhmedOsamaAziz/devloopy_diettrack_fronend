import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/test.dart';
import 'package:ui/widgets/custom_text.dart';

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
              onPressed: () async {
                launchURL();
              },
              child: Text(
                'Get Starter Today',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: ScreenSize.isLarge ? 14 : 12,
                ),
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
              onPressed: () {},
              child: CustomText(
                text: 'Book a Demo',
                fontSize: ScreenSize.isLarge ? 14 : 12,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}
