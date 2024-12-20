// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';

import 'package:ui/model/general/our_story.dart';
import 'package:ui/widgets/custom_text.dart';

class CardRight extends StatelessWidget {
  const CardRight({
    super.key,
    required this.ourStory,
  });

  final OurStoryModel ourStory;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 530,
            width: 789,
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 50),
            decoration: const BoxDecoration(
              color: ColorsApp.MainColorbackgraund,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: CustomText(
                    text: ourStory.title,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenSize.isLarge ? 28 : 16,
                    color: ColorsApp.MAINCOLOR,
                  ),
                ),
                const SizedBox(
                  width: 392,
                  child: Divider(color: Colors.lightGreen, thickness: 2),
                ),
                const SizedBox(height: 50),
                Expanded(
                  child: CustomText(
                    text: ourStory.subTitle,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: ColorsApp.TextColorFeatures,
                  ),
                ),
                const SizedBox(height: 20),
                CustomText(
                  text: ourStory.date,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                  color: ColorsApp.TextColorFeatures,
                ),
              ],
            ),
          ),
        ),
        Container(height: 530, width: 10, color: Colors.lightGreen),
        Expanded(
          child: Container(
            height: 530,
            width: 789,
            decoration: const BoxDecoration(),
            child: Image.asset(ourStory.image, fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
