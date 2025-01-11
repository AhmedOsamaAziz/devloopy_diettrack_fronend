import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/about/sections/category_story/widgets/our_story_list_card.dart';

class TabletCardStory extends StatelessWidget {
  const TabletCardStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      width: 1280,
      decoration: BoxDecoration(
          color: ColorsApp.OUTLINECOLOR,
          borderRadius: BorderRadius.circular(12)),
      child: OurStoryListCard(),
    );
  }
}
