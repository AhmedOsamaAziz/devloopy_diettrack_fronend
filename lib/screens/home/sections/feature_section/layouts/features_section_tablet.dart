import 'package:flutter/material.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_description.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_list_custom_card.dart';
import 'package:ui/screens/home/sections/feature_section/widget/feature_title.dart';

class FeatureSectionTablet extends StatelessWidget {
  const FeatureSectionTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: MediaQuery.sizeOf(context).width,
      child: const Column(
        children: [
          FeatureTitle(),
          FeatureDescription(),
          SizedBox(height: 20),
          SizedBox(
            height: 550,
            child: FeatureListCustomCard(),
          ),

          // ),
        ],
      ),
    );
  }
}
