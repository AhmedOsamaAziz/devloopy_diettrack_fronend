import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/our_story/widget/our_story_description.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_title.dart';

class MobileOurStorySection extends StatelessWidget {
  const MobileOurStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20, left: 20),
        padding: const EdgeInsets.only(right: 20, left: 20),
        width: 358,
        height: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            OurBlogTitle(),
            Expanded(child: OurStoryDescription()),
          ],
        ));
  }
}
