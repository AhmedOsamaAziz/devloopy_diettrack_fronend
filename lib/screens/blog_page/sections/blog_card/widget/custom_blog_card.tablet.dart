import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/blog_card.dart';
import 'package:ui/widgets/custom_text.dart';

class CustomBlogCardTablet extends StatelessWidget {
  const CustomBlogCardTablet({
    super.key,
    required this.blogCard,
    this.onPressed,
  });

  final BlogCard blogCard;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: const EdgeInsets.only(left: 20, right: 30, bottom: 30, top: 30),
      decoration: BoxDecoration(
          border: Border.all(width: 0.2, color: ColorsApp.SecondaryColor)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              children: [
                CustomText(text: blogCard.title),
                const SizedBox(
                  width: 170,
                  child: Divider(
                    thickness: 2,
                    color: ColorsApp.SecondaryColor,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              child: Image.asset(
                blogCard.image,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: blogCard.titleHeader,
                        fontSize: getResponsiveFontSize(context, fontSize: 14),
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomText(
                        text: blogCard.subTitle,
                        fontSize: getResponsiveFontSize(context, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButtonReadMe(onPressed: onPressed),
            ],
          )
        ],
      ),
    );
  }
}

class CustomButtonReadMe extends StatelessWidget {
  const CustomButtonReadMe({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.all(5),
        height: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.0), // Adjust as needed
        ),
        color: ColorsApp.SecondaryColor,
        onPressed: onPressed,
        child: Text(
          'Read More',
          style: TextStyle(
            color: Colors.black,
            fontFamily: FontsApp.fontFamilyUrbanist,
            fontWeight: FontWeight.w800,
            fontSize: getResponsiveFontSize(context, fontSize: 10),
          ),
        ));
  }
}
