 

import 'package:flutter/material.dart';
 import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_description.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_title.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/custom_list_view.dart';

class OurBlogMoblie extends StatelessWidget {
  const OurBlogMoblie({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          OurBlogTitle(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: OurBlogDescription(),
          ),
           CustomListView(),
        ],
      ),
    );
  }
}
