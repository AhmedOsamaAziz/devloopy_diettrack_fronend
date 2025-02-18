import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/our_story.dart';
import 'package:ui/screens/about/sections/category_story/widgets/card_left.dart';
import 'package:ui/screens/about/sections/category_story/widgets/card_mobile.dart';
import 'package:ui/screens/about/sections/category_story/widgets/card_right.dart';

class OurStoryListCard extends StatelessWidget {
  OurStoryListCard({super.key});
  final List ourStory = OurStoryModel.ourStories;

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge || ScreenSize.isMedium
        ? ListView.builder(
            shrinkWrap: true,
            cacheExtent: 4,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ourStory.length,
            itemBuilder: (context, index) {
              return index % 2 == 0
                  ? CardLeft(ourStory: ourStory[index])
                  : CardRight(ourStory: ourStory[index]);
            },
          )
        : ListView.builder(
            shrinkWrap: true,
            cacheExtent: 4,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ourStory.length,
            itemBuilder: (context, index) {
              return CardMobile(ourStory: ourStory[index]);
            },
          );
  }
}
