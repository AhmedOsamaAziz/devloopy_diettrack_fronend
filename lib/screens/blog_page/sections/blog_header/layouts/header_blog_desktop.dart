// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ui/screens/blog_page/sections/blog_header/widget/blog_description.dart';
import 'package:ui/screens/blog_page/sections/blog_header/widget/blog_title.dart';

class HeaderBlogDesktop extends StatelessWidget {
  const HeaderBlogDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1596,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 1596,
                height: 300,
                decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
                child: Image.asset(
                  'assets/images/backgroundcard.png',
                ),
              ),
              Positioned(
                top: 30,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    'assets/images/hedaer.png',
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              const Positioned(
                top: 150,
                child: BlogTitle(),
              ),
            ],
          ),
          Container(
            color: const Color(0xffF6FBE9),
            child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 200.0),
                child: BlogDescription()),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
