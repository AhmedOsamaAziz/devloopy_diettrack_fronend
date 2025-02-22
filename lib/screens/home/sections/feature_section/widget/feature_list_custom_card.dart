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
    double height = MediaQuery.of(context).size.height;

    return ScreenSize.isLarge || ScreenSize.isMedium
        ? SizedBox(
            height: height,
            child: RepaintBoundary(
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
            ),
          )
        : SizedBox(
            height: height * 1.7,
            width: 360,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
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
