import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/Introduction_getstart_button.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_avatars.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_description.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_happy_customers.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_image.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_title.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.OUTLINECOLOR,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 1000,
      width: 800,
      child: Column(
        children: [
          const SizedBox(width: 800, child: IntroductionImage()),
          Container(
            padding:
                const EdgeInsets.only(top: 60, bottom: 20, left: 20, right: 60),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IntroductionTitle(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Expanded(child: IntroductionDescription()),
                ),
                SizedBox(height: 30),
                Column(
                  children: [IntroductionGetstartButton()],
                ),
                SizedBox(height: 30),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [IntroductionAvatars()],
                    ),
                    SizedBox(height: 10),
                    IntroductionHappyCustomers()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
