import 'package:flutter/material.dart';
import 'package:ui/screens/pricing_page/sections/features_plan/widget/custom_free_plan.dart';
import 'package:ui/screens/pricing_page/sections/features_plan/widget/pricing_feature.dart';

class FeaturesPlan extends StatelessWidget {
  const FeaturesPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 1590,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PricingFeature(
            title: 'Fuatures',
            title2: 'Personalized Nutrition Plan',
            title3: 'Mobile App Access',
            title4: 'Email Support',
            title5: 'One -on One Video Consultations',
            title6: 'Recipe Recommendations and Meal Planning',
            title7: 'Priority Support',
            title8: 'Educational Resources and Guides',
            title9: 'Advanced Progress Tracking Tools',
            title10: 'Customized Meal Plans and Recipe Suggestions',
            title11: 'Phone Support',
          ),
          CustomFreePlanIcon(
            title: 'Free Plan',
            image: 'assets/images/checkboxright.png',
            image2: 'assets/images/checkboxright.png',
            image3: 'assets/images/checkboxright.png',
            image4: 'assets/images/checkboxright.png',
            image5: 'assets/images/checkbox2.png',
            image6: 'assets/images/checkbox2.png',
            image7: 'assets/images/checkbox2.png',
            image8: 'assets/images/checkbox2.png',
            image9: 'assets/images/checkbox2.png',
            image10: 'assets/images/checkbox2.png',
            image11: 'assets/images/checkbox2.png',
          ),
          CustomFreePlanIcon(
            title: 'Free Plan',
            image: 'assets/images/checkboxright.png',
            image2: 'assets/images/checkboxright.png',
            image3: 'assets/images/checkboxright.png',
            image4: 'assets/images/checkboxright.png',
            image5: 'assets/images/checkboxright.png',
            image6: 'assets/images/checkboxright.png',
            image7: 'assets/images/checkboxright.png',
            image8: 'assets/images/checkbox2.png',
            image9: 'assets/images/checkbox2.png',
            image10: 'assets/images/checkbox2.png',
            image11: 'assets/images/checkbox2.png',
          ),
          CustomFreePlanIcon(
            title: 'Free Plan',
            image: 'assets/images/checkboxright.png',
            image2: 'assets/images/checkboxright.png',
            image3: 'assets/images/checkboxright.png',
            image4: 'assets/images/checkboxright.png',
            image5: 'assets/images/checkboxright.png',
            image6: 'assets/images/checkboxright.png',
            image7: 'assets/images/checkboxright.png',
            image8: 'assets/images/checkboxright.png',
            image9: 'assets/images/checkboxright.png',
            image10: 'assets/images/checkboxright.png',
            image11: 'assets/images/checkboxright.png',
          ),
        ],
      ),
    );
  }
}
