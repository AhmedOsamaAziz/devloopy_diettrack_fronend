import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonals_title.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_custom_button.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_list_custom_card.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_description.dart';

class MoblieTestimonialsOurComment extends StatelessWidget {
  const MoblieTestimonialsOurComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 358,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(),
      child: const Column(
        children: [
          TestmonialsTitle(),
          TestmonialsDescription(),
          SizedBox(height: 20),
          TestimonialsListCustomCard(),
          SizedBox(height: 20),
          TestmonialsCustomButton(),
        ],
      ),
    );
  }
}
