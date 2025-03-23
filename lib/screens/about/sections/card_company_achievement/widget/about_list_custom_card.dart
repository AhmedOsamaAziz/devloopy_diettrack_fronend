import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'about_custom_card.dart';
import 'package:ui/model/general/card_about.dart';

class AboutListCustomCard extends StatelessWidget {
  AboutListCustomCard({super.key});
  final List cardCompany = CardCompanyAbout.cardCompany;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ScreenSize.isLarge || ScreenSize.isMedium
                ? GridView.builder(
                    shrinkWrap: true,  
                    itemCount: cardCompany.length,
                    physics:
                        const NeverScrollableScrollPhysics(), // Disable inner scrolling
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 220,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return AboutCustomCard(
                        cardCompanyAbout: cardCompany[index],
                      );
                    },
                  )
                : RepaintBoundary(
                  child: ListView.builder(
                      shrinkWrap: true, // Prevents unbounded height issue
                      itemCount: cardCompany.length,
                      physics:
                          const NeverScrollableScrollPhysics(), // Disable inner scrolling
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: AboutCustomCard(
                            cardCompanyAbout: cardCompany[index],
                          ),
                        );
                      },
                    ),
                ),
          ),
        );
      },
    );
  }
}
