import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_avatars.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_description.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_getstart_button.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_happy_customers.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_image.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_title.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.OUTLINECOLOR,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: MediaQuery.sizeOf(context).height * 1.09,
      width: MediaQuery.of(context).size.width * 1.2,
      child: Column(
        children: [
          const SizedBox(
            width: 390,
            height: 320,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                IntroductionImage(),
                Positioned(
                  left: 80,
                  bottom: -40,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IntroductionAvatars(),
                        ],
                      ),
                      SizedBox(height: 10),
                      IntroductionHappyCustomers()
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 20, left: 20, right: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IntroductionTitle(),
                  SizedBox(height: 20),
                  IntroductionDescription(),
                  SizedBox(height: 20),
                  IntroductionGetstartButton()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
