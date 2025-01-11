import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/constants/custom_button.dart';

class MobileButtonBlogPage extends StatelessWidget {
  const MobileButtonBlogPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: const BoxDecoration(
            color: ColorsApp.MAINCOLOR,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 61,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                child: CustomButton(
                  height: 60,
                  onPressed: () {},
                  text: " All",
                  colorbtn: ColorsApp.TextColor,
                  colortxt: const Color(0xFFE6E6E6),
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
              CustomButton(
                height: 60,
                onPressed: () {},
                text: " Weight Tips ",
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
                onPressed: () {},
                text: "Fitness and Exercise ",
                colortxt: const Color(0xFFE6E6E6),
                fontSize: 14,
              ),
              CustomButton(
                onPressed: () {},
                text: "Mindset and Motivations",
                colortxt: const Color(0xFFE6E6E6),
                fontSize: 14,
              ),
              //CustomButton(
              //   onPressed: () {},
              //   text: "Recipes and Meal Planning",
              //   colortxt: const Color(0xFFE6E6E6),
              //   fontSize: 14,
              // ),
            ],
          ),
        ),
      ]),
    );
  }
}
