import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/custom_button.dart';

class TabletButtonBlogPage extends StatelessWidget {
  const TabletButtonBlogPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 1200,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            color: ColorsApp.MAINCOLOR,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                height: 60,
                onPressed: () {},
                text: " All",
                colorbtn: ColorsApp.TextColor,
                colortxt: const Color(0xFFE6E6E6),
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
              const SizedBox(width: 14),
              CustomButton(
                height: 60,
                onPressed: () {},
                text: " Weight Loss Tips ",
                colortxt: const Color(0xFFE6E6E6),
                fontSize: 14,
              ),
              CustomButton(
                height: 60,
                onPressed: () {},
                text: " Healthy Eating ",
                colortxt: const Color(0xFFE6E6E6),
                fontSize: 14,
              ),
              CustomButton(
                height: 60,
                onPressed: () {},
                text: "Fitness and Exercise ",
                colortxt: const Color(0xFFE6E6E6),
                fontSize: 14,
              ),
              CustomButton(
                height: 60,
                onPressed: () {},
                text: "Mindset and Motivations",
                colortxt: const Color(0xFFE6E6E6),
                fontSize: 14,
              ),
              CustomButton(
                height: 60,
                onPressed: () {},
                text: "Recipes and Meal Planning",
                colortxt: const Color(0xFFE6E6E6),
                fontSize: 14,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
