import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/model/general/card.our_blog.dart';
import 'package:ui/widgets/custom_text.dart';

class OurBlogCustomCard extends StatelessWidget {
  const OurBlogCustomCard({
    super.key,
    required this.blogList,
    this.cardOurBlogModel,
  });
  final BlogList blogList;
  final CardOurBlogModel? cardOurBlogModel;
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    return Card(
      color: const Color(0xffF6FBE9),
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: ScreenSize.isLarge ? 20 : 15,
            vertical: ScreenSize.isLarge ? 20 : 15,
          ),
          width: ScreenSize.isLarge
              ? 600
              : ScreenSize.isMedium
                  ? 359
                  : 310,
          height: ScreenSize.isLarge
              ? 650
              : ScreenSize.isMedium
                  ? 550
                  : 500,
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: blogList.imageUrl == null
                  ? Image.network(
                      "data:image/jpeg;base64,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",
                      fit: BoxFit.fill,
                    )
                  : Image.asset(
                      Assets.imagesMindfulEating,
                    ),
            ),
            const SizedBox(height: 10),

            Expanded(
                child: Column(
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
                const Spacer(),
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
                      ),
                      const SizedBox(width: 15),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: blogList.title,
                              fontSize: ScreenSize.isLarge ? 20 : 14,
                              color: ColorsApp.TextColor,
                              fontWeight: FontWeight.bold,
                            ),

                            //
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
            )),
            // )
          ])),
    );
  }
}
