import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonals_title.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_custom_button.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_list_custom_card.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_description.dart';

class DesktopTestimonialsOurComment extends StatelessWidget {
  const DesktopTestimonialsOurComment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(),
      padding: EdgeInsets.symmetric(
          horizontal: ScreenSize.isLarge
              ? 100
              : ScreenSize.isMedium
                  ? 50
                  : 10),
      child: const Column(
        children: [
          TestmonialsTitle(),
          TestmonialsDescription(),
          SizedBox(height: 30),
          SizedBox(height: 300, child: TestimonialsListCustomCard()),
          SizedBox(height: 25),
          TestmonialsCustomButton(),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
