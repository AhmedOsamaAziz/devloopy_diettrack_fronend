import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/about/sections/category_story/widgets/our_story_list_card.dart';

class DesktopCardStory extends StatelessWidget {
  const DesktopCardStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: ScreenSize.isLarge ? 50 : 20,
          left: ScreenSize.isLarge ? 50 : 20),
      padding: EdgeInsets.only(
          top: ScreenSize.isLarge ? 100 : 20,
          right: ScreenSize.isLarge ? 50 : 20,
          left: ScreenSize.isLarge && ScreenSize.isMedium ? 50 : 20,
          bottom: ScreenSize.isSmall ? 10 : 0),
      width: ScreenSize.isLarge
          ? 1596
          : ScreenSize.isMedium
              ? 1280
              : 358,
      // height: MediaQuery.sizeOf(context).height * 5,
      decoration: BoxDecoration(
          color: ColorsApp.OUTLINECOLOR,
          borderRadius: BorderRadius.circular(ScreenSize.isLarge ? 12 : 8)),
      child: OurStoryListCard(),
    );
  }
}
