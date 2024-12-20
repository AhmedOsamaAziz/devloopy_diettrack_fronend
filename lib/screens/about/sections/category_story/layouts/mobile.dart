import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/about/sections/category_story/widgets/our_story_list_card.dart';

class MobileCardStory extends StatelessWidget {
  const MobileCardStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          margin: const EdgeInsets.only(right: 20, left: 20),
          padding:
              const EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 10),
          width: 359,
          height: 2270,
          decoration: BoxDecoration(
              color: ColorsApp.OUTLINECOLOR,
              borderRadius: BorderRadius.circular(8)),
          child: OurStoryListCard()
          //
          ),
    );
  }
}
