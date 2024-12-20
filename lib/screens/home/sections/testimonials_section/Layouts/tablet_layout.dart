import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonals_title.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_custom_button.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_list_custom_card.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_description.dart';

class TabletTestimonialsOurComment extends StatelessWidget {
  const TabletTestimonialsOurComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(),
      child: const Column(
        children: [
          TestmonialsTitle(),
          TestmonialsDescription(),
          SizedBox(height: 30),
          SizedBox(
            height: 300,
            child: TestmonialsListCustomCard(),
          ),
          TestmonialsCustomButton(),
        ],
      ),
    );
  }
}
