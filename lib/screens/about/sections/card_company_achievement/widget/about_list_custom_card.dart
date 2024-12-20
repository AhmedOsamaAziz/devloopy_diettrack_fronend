import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'about_custom_card.dart';
import 'package:ui/model/general/card_about.dart';

class AboutListCustomCard extends StatelessWidget {
  AboutListCustomCard({super.key});
  final List cardCompany = CardCompanyAbout.cardCompany;

  @override
  Widget build(BuildContext context) {
    return ScreenSize.isLarge
        ? Expanded(
            child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: cardCompany.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 220,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return AboutCustomCard(
                    cardCompanyAbout: cardCompany[index],
                  );
                }),
          )
        : ListView.builder(
            itemCount: cardCompany.length,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return AboutCustomCard(
                cardCompanyAbout: cardCompany[index],
              );
            });
  }
}
