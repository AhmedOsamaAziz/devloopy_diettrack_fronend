import 'package:flutter/material.dart';
import 'package:ui/data/card_features.dart';
import 'package:ui/helper/screen_size.dart';

import 'feature_custom_card.dart';

class FeatureListCustomCard extends StatefulWidget {
  const FeatureListCustomCard({super.key});

  @override
  State<FeatureListCustomCard> createState() => _FeatureListCustomCardState();
}

class _FeatureListCustomCardState extends State<FeatureListCustomCard> {
  @override
  Widget build(BuildContext context) {
    final List listCard = CardFeatures.cardFeature;

    return ScreenSize.isLarge || ScreenSize.isMedium
        ? SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: listCard.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                mainAxisSpacing: 50,
                mainAxisExtent: 200,
              ),
              itemBuilder: (BuildContext context, int index) {
                return FeatureCustomCard(
                  card: listCard[index],
                );
              },
            ),
          )
        : SizedBox(
            height: 1050,
            width: 360,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: listCard.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return FeatureCustomCard(
                  card: listCard[index],
                );
              },
            ),
          );
  }
}
