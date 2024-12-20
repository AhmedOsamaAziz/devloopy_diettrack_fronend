import 'package:flutter/material.dart';

import 'package:ui/screens/home/sections/feature_section/widget/feature_description.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_list_custom_card.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_title.dart';

class FeatureSectionMoblie extends StatelessWidget {
  const FeatureSectionMoblie({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 358,
      child: const Column(
        children: [
          FeatureTitle(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: FeatureDescription(),
          ),
          SizedBox(height: 20),
          FeatureListCustomCard(),
        ],
      ),
    );
  }
}
