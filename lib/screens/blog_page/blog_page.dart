import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/shared/Footer/main_footer.dart';
import 'package:ui/shared/Navigation_Bar/main_navigation_bar.dart';
 
import 'sections/blog_card/blog_card.dart';
import 'sections/blog_buttons/blog_button.dart';
import 'sections/blog_header/header_blog.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          spacing: 50,
          children: [
            MainNavigationBar(),
            HeaderBolgSections(),
            ButtonBolgSections(),
            BLogCard(),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
