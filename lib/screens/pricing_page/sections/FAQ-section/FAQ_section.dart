import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/pricing_page/sections/FAQ-section/widget/questions_description.dart';
import 'package:ui/screens/pricing_page/sections/FAQ-section/widget/questions_title.dart';

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: ScreenSize.isLarge ? 150 : 30),
        padding:
            EdgeInsets.symmetric(horizontal: ScreenSize.isLarge ? 150 : 30),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            QuestionsTitle(),
            SizedBox(height: 15),
            QuestionsDescription(),
            SizedBox(height: 15),
          ],
        ));
  }
}
