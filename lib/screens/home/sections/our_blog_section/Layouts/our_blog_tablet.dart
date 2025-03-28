import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/custom_grid_view.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_description.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_title.dart';

class OurBlogTablet extends StatelessWidget {
  const OurBlogTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: 1280,
         child: Column(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Column(children: [
                  OurBlogTitle(),
                  OurBlogDescription(),
                ])),
            const SizedBox(height: 30),
            const CustomGridView(),
          ],
        ),
      ),
    );
  }
}
