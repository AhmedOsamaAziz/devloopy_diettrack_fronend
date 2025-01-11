import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_description.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_list_custom_card.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_title.dart';

class FeatureSdctionDesktop extends StatelessWidget {
  const FeatureSdctionDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: 1596,
      child: const Column(
        children: [
          SizedBox(height: 50),
          FeatureTitle(),
          SizedBox(height: 20),
          FeatureDescription(),
          SizedBox(height: 30),
          FeatureListCustomCard(),
        ],
      ),
    );
  }
}
