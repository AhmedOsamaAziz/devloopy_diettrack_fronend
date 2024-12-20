import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_description.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_list_custom_card.dart';
import 'package:ui/screens/about/sections/card_company_achievement/widget/about_title.dart';

class DesktopCardSection extends StatelessWidget {
  const DesktopCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          height: 700,
          width: 1596,
          decoration: const BoxDecoration(color: ColorsApp.OUTLINECOLOR),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Column(
                  children: [
                    AboutTitle(),
                    AboutDescription(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              AboutListCustomCard(),
            ],
          )),
    );
  }
}
