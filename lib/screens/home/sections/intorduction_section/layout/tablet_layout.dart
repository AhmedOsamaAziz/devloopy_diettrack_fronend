import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/ghaps.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/Introduction_getstart_button.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_avatars.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_description.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_happy_customers.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_image.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_title.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.OUTLINECOLOR,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
           const Expanded(flex: 1, child: IntroductionImage()),
          gapW20,
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 20, left: 20, right: 60),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IntroductionTitle(),
                  gapH20,
                  IntroductionDescription(),
                  gapH30,
                  IntroductionGetstartButton(),
                  gapH30,
                  Row(
                    spacing: 40,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IntroductionAvatars(),
                      IntroductionHappyCustomers(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
