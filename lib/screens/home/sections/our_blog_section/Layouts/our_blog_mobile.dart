import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_list_custom_card.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_description.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_title.dart';

class OurBlogMoblie extends StatelessWidget {
  const OurBlogMoblie({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OurBlogTitle(),
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: OurBlogDescription()),
        SizedBox(
            height: MediaQuery.of(context).size.height * 1.95,
            child: const OurBlogListCustomCard()),
      ],
    );
  }
}
