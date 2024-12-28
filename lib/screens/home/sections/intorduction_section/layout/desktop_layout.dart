import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
         width: 1500,  
      color: ColorsApp.OUTLINECOLOR,
      padding: const EdgeInsets.symmetric(vertical: 10),
      
      child: Row(
        children: [
          const Expanded(child: IntroductionImage()),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IntroductionTitle(),
                  const SizedBox(height: 18),
                  const IntroductionDescription(),
                  const SizedBox(height: 30),
                  const IntroductionGetstartButton(),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const IntroductionAvatars(),
                      SizedBox(width: 20.w),
                      const IntroductionHappyCustomers()
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
