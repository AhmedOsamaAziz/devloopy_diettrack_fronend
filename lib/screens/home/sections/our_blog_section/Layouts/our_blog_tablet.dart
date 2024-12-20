import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_description.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_list_custom_card.dart';
import 'package:ui/screens/home/sections/our_blog_section/widget/our_blog_title.dart';

class OurBlogTablet extends StatelessWidget {
  const OurBlogTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: 1280,
        height: 1550,
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Column(
                  children: [
                    OurBlogTitle(),
                    OurBlogDescription(),
                  ],
                )),
            const SizedBox(height: 30),
            const SizedBox(
              height: 1400,
              child: OurBlogListCustomCard(),
            )
          ],
        ),
      ),
    );
  }
}

// class CustomGridViewCardBlog extends StatelessWidget {
//   CustomGridViewCardBlog({super.key});
//   final List cardOurBlog = CardOurBlogModel.cardFeature;
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: cardOurBlog.length,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 2,
//           mainAxisSpacing: 5,
//           mainAxisExtent: 630,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return OurBlogCustomCard(
//             cardOurBlogModel: cardOurBlog[index],
//           );
//         });
//   }
// }
