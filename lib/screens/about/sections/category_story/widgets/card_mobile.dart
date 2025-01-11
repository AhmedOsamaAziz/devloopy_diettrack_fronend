import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/our_story.dart';
import 'package:ui/widgets/custom_text.dart';

class CardMobile extends StatelessWidget {
  const CardMobile({super.key, required this.ourStory});
  final OurStoryModel ourStory;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(),
          child: Image.asset(
            ourStory.image,
            fit: BoxFit.cover,
          ),
        ),
        const Divider(thickness: 3, color: ColorsApp.SecondaryColor),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
        Container(
          height: 400,
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
                    fontSize: getResponsiveFontSize(context, fontSize: 16),
                    color: ColorsApp.MAINCOLOR,
                  ),
                ),
              ),
              SizedBox(
                  width: 80.w,
                  child: const Divider(color: Colors.lightGreen, thickness: 3)),
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
      ],
    );
  }
}
