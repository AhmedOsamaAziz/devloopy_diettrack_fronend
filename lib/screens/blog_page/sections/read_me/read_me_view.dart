import 'package:flutter/material.dart';
import 'package:ui/screens/blog_page/sections/blog_header/widget/blog_description.dart';
import 'package:ui/screens/blog_page/sections/blog_header/widget/blog_title.dart';
import 'package:ui/widgets/custom_appbar.dart';
import 'package:ui/widgets/footer.dart';

class ReadMeView extends StatelessWidget {
  const ReadMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavigationAppBar(),
            const BlogTitle(),
            const BlogDescription(),
            Container(
              color: Colors.amber,
              margin: const EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 50,
              ),
              height: 600,
              width: 1596,
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
