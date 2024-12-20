import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/our_story/widget/our_story_description.dart';
import 'package:ui/screens/about/sections/our_story/widget/our_story_title.dart';

class TabletOurStorySection extends StatelessWidget {
  const TabletOurStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 40, left: 40),
        padding: const EdgeInsets.only(right: 40, left: 40),
        width: 1280,
        height: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            OurStoryTitle(),
            Expanded(child: OurStoryDescription()),
          ],
        ));
  }
}
