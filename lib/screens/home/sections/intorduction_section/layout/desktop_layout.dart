import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_getstart_button.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_avatars.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_description.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_happy_customers.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_image.dart';
import 'package:ui/screens/home/sections/intorduction_section/widget/introduction_title.dart';

class DeskTopLayout extends StatelessWidget {
  const DeskTopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.OUTLINECOLOR,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 700, // MediaQuery.sizeOf(context).height * 0.9,
      width: 1500, //MediaQuery.of(context).size.width * 1.5,
      child: Row(
        children: [
          const Expanded(child: IntroductionImage()),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 20, left: 20, right: 60),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntroductionTitle(),
                  SizedBox(height: 18),
                  IntroductionDescription(),
                  SizedBox(height: 30),
                  IntroductionGetstartButton(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      IntroductionAvatars(),
                      SizedBox(width: 10),
                      IntroductionHappyCustomers()
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
