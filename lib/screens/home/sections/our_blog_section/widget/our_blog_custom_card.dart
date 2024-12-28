import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/widgets/custom_text.dart';

class OurBlogCustomCard extends StatelessWidget {
  const OurBlogCustomCard({
    super.key,
    required this.blogList,
  });
  final BlogList blogList;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    return Card(
      color: const Color(0xffF6FBE9),
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.isLarge ? 20 : 15,
            vertical: ScreenSize.isLarge ? 20 : 15
          ),
          width: ScreenSize.isLarge
              ? 600
              : ScreenSize.isMedium
                  ? 359
                  : 310,
          height: ScreenSize.isLarge
              ? 600
              : ScreenSize.isMedium
                  ? 700
                  : 500,
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child:   CachedNetworkImage(
                imageUrl: blogList.imageUrl ?? Image.asset(Assets.imagesAbout1).toString(),
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            const SizedBox(height: 10),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: blogList.title,
                  fontSize: ScreenSize.isLarge ? 18 : 14,
                  color: ColorsApp.TextColor,
                ),
                CustomText(
                  text: blogList.description,
                  fontSize: ScreenSize.isLarge ? 26 : 18,
                  color: ColorsApp.MAINCOLOR,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(height: 10),
                CustomText(
                  text: blogList.titleAr,
                  fontSize: ScreenSize.isLarge ? 18 : 14,
                  color: ColorsApp.TextColor,
                ),
                const SizedBox(height: 10),
                Container(
                  color: const Color(0xffFAFDF2),
                  padding: EdgeInsets.only(
                      left: ScreenSize.isLarge ? 20 : 10,
                      top: ScreenSize.isLarge ? 20 : 10,
                      right: ScreenSize.isLarge ? 16 : 10,
                      bottom: ScreenSize.isLarge ? 20 : 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ScreenSize.isLarge ? 60 : 50,
                        width: ScreenSize.isLarge ? 60 : 50,
                        child: Image.asset(Assets.imagesCircleAvatar1),
                      ),
                      const SizedBox(width: 15),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              // This is the title of the blog
                              text: blogList.title,
                              fontSize: ScreenSize.isLarge ? 20 : 14,
                              color: ColorsApp.TextColor,
                              fontWeight: FontWeight.bold,
                            ),

                            // This is the Date of the blog
                            Text(
                              formattedDate,
                              style: TextStyle(
                                fontSize: ScreenSize.isLarge ? 15 : 12,
                              ),
                            ),
                          ]),
                      const Spacer(),
                      Container(
                        width: ScreenSize.isLarge ? 60 : 32,
                        height: ScreenSize.isLarge ? 60 : 35,
                        decoration: BoxDecoration(
                          color: const Color(0xffEEF8D3),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.heart),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        width: ScreenSize.isLarge ? 60 : 32,
                        height: ScreenSize.isLarge ? 60 : 35,
                        decoration: BoxDecoration(
                          color: const Color(0xffEEF8D3),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(FontAwesomeIcons.bookmark),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // )
          ])),
    );
  }
}
