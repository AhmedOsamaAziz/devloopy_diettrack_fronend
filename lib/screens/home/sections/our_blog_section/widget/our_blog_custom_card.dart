// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'package:ui/constants/constants.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/widgets/custom_text.dart';

class OurBlogCustomCard extends StatelessWidget {
  const OurBlogCustomCard({super.key, required this.blogList, this.onTap});

  final BlogList blogList;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);

    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: const Color(0xffF6FBE9),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenSize.isLarge ? 14 : 15, vertical: 4),
          width: ScreenSize.isLarge
              ? 630
              : ScreenSize.isMedium
                  ? 359
                  : 310,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: blogList.imageUrl ??
                        Image.asset(Assets.imagesAbout2).toString(),
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        Image.asset(Assets.imagesAbout1, fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 6),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: blogList.title,
                      fontSize: getResponsiveFontSize(context, fontSize: 14),
                      color: ColorsApp.TextColor,
                    ),
                    CustomText(
                      text: blogList.description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      fontSize: getResponsiveFontSize(context, fontSize: 14),
                      color: ColorsApp.MAINCOLOR,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 6),
                    CustomText(
                      text: blogList.titleAr,
                      fontSize: getResponsiveFontSize(context, fontSize: 14),
                      color: ColorsApp.TextColor,
                    ),
                    const SizedBox(height: 6),
                    Container(
                      color: const Color(0xffFAFDF2),
                      padding: EdgeInsets.only(
                        left: ScreenSize.isLarge ? 20 : 10,
                        top: ScreenSize.isLarge ? 20 : 10,
                        right: ScreenSize.isLarge ? 16 : 10,
                        bottom: ScreenSize.isLarge ? 20 : 0,
                      ),
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
                                text: blogList.title,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 14),
                                color: ColorsApp.TextColor,
                                fontWeight: FontWeight.bold,
                              ),
                              Text(
                                formattedDate,
                                style: TextStyle(
                                  fontSize: ScreenSize.isLarge ? 15 : 12,
                                ),
                              ),
                            ],
                          ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
