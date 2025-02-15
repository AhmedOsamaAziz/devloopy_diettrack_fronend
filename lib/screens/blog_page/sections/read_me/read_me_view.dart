import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/screens/blog_page/sections/blog_header/widget/blog_description.dart';
import 'package:ui/screens/blog_page/sections/blog_header/widget/blog_title.dart';
import 'package:ui/widgets/Footer/main_footer.dart';
import 'package:ui/widgets/Navigation_Bar/main_navigation_bar.dart';
import 'package:ui/widgets/custom_text.dart';

class ReadMeView extends StatelessWidget {
  const ReadMeView({super.key, required this.blogList});
  final BlogList blogList;
  @override
  Widget build(BuildContext context) {
    // String formattedDate =
    //     DateFormat('dd MMM yyyy').format(blogList.publishDate);

    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            const MainNavigationBar(),
            const BlogTitle(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      ScreenSize.isLarge & ScreenSize.isMedium ? 50.0 : 10.0),
              child: const BlogDescription(),
            ),
            Container(
              width: ScreenSize.isLarge ? width * 0.5 : width * 0.8,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 0.2, color: ColorsApp.SecondaryColor)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: IntrinsicWidth(
                        child: Column(children: [
                      CustomText(text: blogList.title),
                      const Divider(color: ColorsApp.SecondaryColor),
                      const SizedBox(height: 20),
                    ])),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2),
                      child: blogList.imageUrl == null
                          ? null
                          : Image.network(
                              blogList.imageUrl!,
                              errorBuilder: (context, error, stackTrace) {
                                return AspectRatio(
                                  aspectRatio: 1.5,
                                  child: Image.asset(
                                    Assets.imagesFitness2,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      spacing: 10,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: blogList.description,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 14),
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: blogList.description,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 12),
                        ),
                        CustomText(
                          text: 'Author: ${blogList.author}',
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 14),
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: 'Date: ${blogList.group}',
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const MainFooter(),
          ],
        ),
      ),
    );
  }
}
