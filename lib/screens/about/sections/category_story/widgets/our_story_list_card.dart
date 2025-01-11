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
        ? CustomScrollView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            slivers: [
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                childCount: ourStory.length,
                (context, index) {
                  return Column(
                    children: [
                      CardLeft(ourStory: ourStory[index]),
                      CardRight(ourStory: ourStory[index]),
                    ],
                  );
                },
              ))
            ],
          )
        : SizedBox(
            height: 700,
            child: ListView.builder(
               scrollDirection: Axis.vertical,
              itemCount: ourStory.length,
              itemBuilder: (context, index) {
                return CardMobile(ourStory: ourStory[index]);
              },
            ),
          );
  }
}
