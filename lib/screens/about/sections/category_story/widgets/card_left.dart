import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/our_story.dart';
import 'package:ui/widgets/custom_text.dart';

class CardLeft extends StatelessWidget {
  const CardLeft({super.key, required this.ourStory});

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
              decoration: const BoxDecoration(),
              child: Image.asset(
                ourStory.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const VerticalDivider(thickness: 3, color: ColorsApp.SecondaryColor),
          Expanded(
            child: Container(
              height: 450,
              width: 789,
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              decoration: const BoxDecoration(
                color: ColorsApp.MainColorbackgraund,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10.w),
                      child: CustomText(
                        text: ourStory.title,
                        fontWeight: FontWeight.bold,
                        fontSize: getResponsiveFontSize(context, fontSize: 16),
                        color: ColorsApp.MAINCOLOR,
                      ),
                    ),
                    SizedBox(
                        width: 80.w,
                        child: const Divider(
                            color: Colors.lightGreen, thickness: 3)),
                    SizedBox(height: 30.h),
                    Expanded(
                      child: CustomText(
                        text: ourStory.subTitle,
                        fontWeight: FontWeight.w300,
                        fontSize: getResponsiveFontSize(context, fontSize: 15),
                        color: ColorsApp.TextColorFeatures,
                      ),
                    ),
                    const SizedBox(height: 20),
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
          ),
        ],
      ),
    );
  }
}
