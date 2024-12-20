import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/our_story/widget/our_story_title.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_description.dart';

class DesktopOurStorySection extends StatelessWidget {
  const DesktopOurStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 140, left: 140),
        padding: const EdgeInsets.only(right: 140, left: 140),
        width: 1596,
        height: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            OurStoryTitle(),
            Expanded(child: OurBlogDescription()),
          ],
        ));
  }
}
