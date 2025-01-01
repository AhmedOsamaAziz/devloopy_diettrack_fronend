import 'package:flutter/material.dart';
import 'package:ui/model/general/basic_plan.dart';
import 'package:ui/screens/pricing_page/sections/plans/widget/pricing_custom_card.dart';

class MobileListPricing extends StatelessWidget {
  const MobileListPricing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List basicPlan = BasicPlan.basicPlans;

    return SizedBox(
      height: 1500,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          itemCount: basicPlan.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return PricingCustomCard(
            isSelected: index == 1,
              basicPlan: basicPlan[index],
            );
          }),
    );
  }
}
