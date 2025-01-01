import 'package:flutter/material.dart';
import 'package:ui/model/general/basic_plan.dart';
import 'package:ui/screens/pricing_page/sections/plans/widget/pricing_custom_card.dart';

class DesktopListPricing extends StatelessWidget {
  const DesktopListPricing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List basicPlan = BasicPlan.basicPlans;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: basicPlan.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
          mainAxisExtent: 620,
        ),
        itemBuilder: (BuildContext context, int index) {
          return PricingCustomCard(
            isSelected: index == 1,
            basicPlan: basicPlan[index],
          );
        },
      ),
    );
  }
}
