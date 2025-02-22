import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/ghaps.dart';
import 'package:ui/model/general/our_story.dart';
import 'package:ui/shared/custom_text.dart';

class CardMobile extends StatelessWidget {
  const CardMobile({super.key, required this.ourStory});
  final OurStoryModel ourStory;
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Image.asset(
              ourStory.image,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 350,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: const BoxDecoration(
              color: ColorsApp.MainColorbackgraund,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicWidth(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.w),
                    child: CustomText(
                      text: ourStory.title,
                      fontWeight: FontWeight.bold,
                      fontSize: getResponsiveFontSize(context, fontSize: 14),
                      color: ColorsApp.MAINCOLOR,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: Divider(
                      thickness: 3, color: ColorsApp.SecondaryColor),
                ),
                gapH30,
                Expanded(
                  child: CustomText(
                    text: ourStory.subTitle,
                    fontWeight: FontWeight.w300,
                    fontSize: getResponsiveFontSize(context, fontSize: 14),
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
        ],
      ),
    );
  }
}
