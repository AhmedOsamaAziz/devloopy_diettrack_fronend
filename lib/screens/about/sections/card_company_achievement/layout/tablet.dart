import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_description.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_list_custom_card.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_title.dart';

class TabletCardSection extends StatelessWidget {
  const TabletCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        width: 850,
        child: Column(
          children: [
            const AboutTitle(),
            const SizedBox(height: 10),
            const AboutDescription(),
            const SizedBox(height: 20),
            SizedBox(
              height: 500,
              child: AboutListCustomCard(),
            )
          ],
        ),
      ),
    );
  }
}
