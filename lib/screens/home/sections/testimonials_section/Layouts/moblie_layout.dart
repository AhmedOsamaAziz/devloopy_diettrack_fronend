import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonals_title.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_custom_button.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_description.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_list_custom_card.dart';

class MoblieTestimonialsOurComment extends StatelessWidget {
  const MoblieTestimonialsOurComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(),
      child: const Column(
        children: [
          TestmonialsTitle(),
          TestmonialsDescription(),
          SizedBox(height: 20),
           SizedBox(height: 700, child: TestimonialsListCustomCard()),
          SizedBox(height: 20),
          TestmonialsCustomButton(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
