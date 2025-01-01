import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/card_features.dart';

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
        ? Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.builder(
                itemCount: listCard.length,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 50,
                  mainAxisExtent: 240,
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
            height: 1050, // Ensure this height fits your layout
            width: 360,
            child: ListView.builder(
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
