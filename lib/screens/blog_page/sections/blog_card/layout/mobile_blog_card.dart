import 'package:flutter/material.dart';
import 'package:ui/model/general/blog_card.dart';
 import 'package:ui/screens/blog_page/sections/blog_card/widget/custom_blog_card_mobile.dart';

class MobileBlogCard extends StatelessWidget {
  const MobileBlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    final blogCardList = BlogCard.blogCard;

    return SizedBox(
      height: 6400,
      // height:  MediaQuery.sizeOf(context).height * 7.89,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: blogCardList.length,
              
              (BuildContext context, int index) {
                return CustomBlogCardMobile(
                  blogCard: blogCardList[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
