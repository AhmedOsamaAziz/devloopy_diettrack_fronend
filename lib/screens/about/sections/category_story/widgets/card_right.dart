// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/ghaps.dart';

import 'package:ui/model/general/our_story.dart';
import 'package:ui/shared/custom_text.dart';

class CardRight extends StatelessWidget {
  const CardRight({super.key, required this.ourStory});

  final OurStoryModel ourStory;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 450,
              width: 789,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              decoration: const BoxDecoration(
                color: ColorsApp.MainColorbackgraund,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IntrinsicWidth(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10.w),
                          child: IntrinsicWidth(
                            child: CustomText(
                              text: ourStory.title,
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 16),
                              color: ColorsApp.MAINCOLOR,
                            ),
                          ),
                        ),
                        const Divider(
                            thickness: 3, color: ColorsApp.SecondaryColor),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Expanded(
                    child: CustomText(
                      text: ourStory.subTitle,
                      fontWeight: FontWeight.w300,
                      fontSize: getResponsiveFontSize(context, fontSize: 15),
                      color: ColorsApp.TextColorFeatures,
                    ),
                  ),
                  gapH20,
                  CustomText(
                    text: ourStory.date,
                    fontWeight: FontWeight.w300,
                    fontSize: getResponsiveFontSize(context, fontSize: 15),
                    color: ColorsApp.TextColorFeatures,
                  ),
                ],
              ),
            ),
          ),
          const VerticalDivider(thickness: 3, color: ColorsApp.SecondaryColor),
          Expanded(
            child: Container(
              height: 450,
              width: 789,
              decoration: const BoxDecoration(),
              child: Image.asset(
                ourStory.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
