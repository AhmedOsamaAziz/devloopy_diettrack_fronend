import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/custom_button.dart';

class DesktopButtonBlogPage extends StatelessWidget {
  const DesktopButtonBlogPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ColorsApp.MAINCOLOR,
        ),
        height: 115,
        width: MediaQuery.of(context).size.width * 0.75,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              spacing: 14,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: Container(
                    height: ScreenSize.isLarge ? 55 : 35,
                    width: 61,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: CustomButton(
                      onPressed: () {},
                      text: "All",
                      colortxt: const Color(0xFFE6E6E6),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Weight Loss Tips",
                  colortxt: const Color(0xFFE6E6E6),
                  fontSize: 14,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Healthy Eating",
                  colortxt: const Color(0xFFE6E6E6),
                  fontSize: 14,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Fitness and Exercise",
                  colortxt: const Color(0xFFE6E6E6),
                  fontSize: 14,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Mindset and Motivations",
                  colortxt: const Color(0xFFE6E6E6),
                  fontSize: 14,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Recipes and Meal Planning",
                  colortxt: const Color(0xFFE6E6E6),
                  fontSize: 14,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Recipes and Meal Planning",
                  colortxt: const Color(0xFFE6E6E6),
                  fontSize: 14,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
