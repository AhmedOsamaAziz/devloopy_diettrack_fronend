import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_description.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_title.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_list_custom_card.dart';

class MoblieCardSection extends StatelessWidget {
  const MoblieCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: 358,
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            const AboutTitle(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: AboutDescription(),
            ),
            const SizedBox(height: 10),
            SizedBox(height: 880, child: AboutListCustomCard())
          ],
        ),
      ),
    );
  }
}
