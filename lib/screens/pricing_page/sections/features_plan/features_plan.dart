import 'package:flutter/material.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/pricing_page/sections/features_plan/widget/custom_free_plan.dart';
import 'package:ui/screens/pricing_page/sections/features_plan/widget/pricing_feature.dart';

class FeaturesPlan extends StatelessWidget {
  const FeaturesPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   EdgeInsets.symmetric(horizontal:ScreenSize.isLarge ? 50 : 10),
      constraints: const BoxConstraints(maxWidth: 1590),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PricingFeature(
            title: 'Fuatures',
            titles: [
              'Personalized Nutrition Plan',
              'Mobile App Access',
              'Email Support',
              'One -on One Video Consultations',
              'Recipe Recommendations and Meal Planning',
              'Priority Support',
              'Educational Resources and Guides',
              'Advanced Progress Tracking Tools',
              'Customized Meal Plans and Recipe Suggestions',
              'Phone Support',
            ],
          ),
          Expanded(
            child: CustomFreePlanIcon(
              title: 'Free Plan',
              images: [
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
              ],
            ),
          ),
          Expanded(
            child: CustomFreePlanIcon(
              title: 'Free Plan',
              images: [
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
                Assets.imagesCheckboxWorng,
              ],
            ),
          ),
          Expanded(
            child: CustomFreePlanIcon(
              title: 'Free Plan',
              images: [
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
                Assets.imagesCheckboxright,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
