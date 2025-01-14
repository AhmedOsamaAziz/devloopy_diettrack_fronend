import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/custom_button.dart';

class TabletButtonBlogPage extends StatelessWidget {
  const TabletButtonBlogPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 115,
      width: 890,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Container(
          decoration: const BoxDecoration(
              color: ColorsApp.MAINCOLOR,
              borderRadius: BorderRadius.all(Radius.circular(8))),
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
