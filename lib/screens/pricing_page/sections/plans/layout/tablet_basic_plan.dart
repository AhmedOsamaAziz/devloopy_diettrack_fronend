import 'package:flutter/material.dart';
import 'package:ui/model/general/basic_plan.dart';
import 'package:ui/screens/pricing_page/sections/plans/widget/pricing_custom_card.dart';

class TabletListPricing extends StatelessWidget {
  const TabletListPricing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List basicPlan = BasicPlan.basicPlans;
    return SizedBox(
      height: 850,
      width: 1200,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: basicPlan.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
          mainAxisExtent: 900,
        ),
        itemBuilder: (BuildContext context, int index) {
          return PricingCustomCard(
            basicPlan: basicPlan[index],
          );
        },
      ),
    );
    // Widget build(BuildContext context) {
    //   return Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //     child: Container(
    //       color: const Color(0xffF6FBE9),
    //       padding: const EdgeInsets.symmetric(horizontal: 20),
    //       width: double.infinity,
    //       height: 1800,
    //       child: const Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Expanded(
    //                 child: Align(
    //                   alignment: Alignment.topCenter,
    //                   child: TabletCustomCradOurPricingPage(
    //                     widthContainer: 350,
    //                     heightContainer: 750,
    //                     heightContainerSmall: 450,
    //                     widthContainerSmall: 330,
    //                     title: 'Basic Plan',
    //                     subTitle: 'Up to 50% off on Yearly Plan',
    //                     paragrph:
    //                         'Personalized nutrition plan tailored to your goals and dietary preferences.',
    //                     paragrph1:
    //                         'Access to our mobile app for convenient meal tracking and progress monitoring.',
    //                     paragrph2:
    //                         'Email support to address your questions and concerns.',
    //                     paragrph3:
    //                         'Regular check-ins with a dedicated nutritionist to review your progress and provide guidance.',
    //                     amount: "\$49",
    //                   ),
    //                 ),
    //               ),
    //               Expanded(
    //                 child: Align(
    //                   alignment: Alignment.topCenter,
    //                   child: TabletCustomCradOurPricingPage(
    //                     widthContainer: 350,
    //                     heightContainer: 750,
    //                     heightContainerSmall: 450,
    //                     widthContainerSmall: 330,
    //                     title: 'Premium Plan',
    //                     subTitle: 'Up to 50% off on Yearly Plan',
    //                     paragrph: 'All the features included in the Basic Plan.',
    //                     paragrph1:
    //                         'One-on-one video consultations with your dedicated nutritionist for more personalized guidance and support.',
    //                     paragrph2:
    //                         'Recipe recommendations and meal planning assistance.',
    //                     paragrph3:
    //                         'Priority email support for quicker responses to your inquiries.',
    //                     paragrph4:
    //                         'Educational resources and guides to deepen your understanding of nutrition and healthy habits.',
    //                     amount: "\$79",
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //           Expanded(
    //             child: Align(
    //               alignment: Alignment.topCenter,
    //               child: TabletCustomCradOurPricingPage(
    //                 widthContainer: 400,
    //                 heightContainer: 900,
    //                 heightContainerSmall: 600,
    //                 widthContainerSmall: 350,
    //                 title: 'Ultimate Plan',
    //                 subTitle: 'Up to 50% off on Yearly Plan  ',
    //                 paragrph: 'All the features included in the Basic Plan.',
    //                 paragrph1:
    //                     'Unlimited access to video consultations with your dedicated nutritionist for ongoing support and accountability.',
    //                 paragrph2:
    //                     'Advanced progress tracking tools to monitor your weight, body measurements, and fitness goals.',
    //                 paragrph3:
    //                     'Customized meal plans and recipe suggestions based on your preferences and nutritional needs.',
    //                 paragrph4:
    //                     'Priority email and phone support for immediate assistance.',
    //                 paragrph5:
    //                     'The Premium Plan is designed for individuals who are committed to achieving significant results and require the highest level of support and personalization.',
    //                 amount: "\$99",
    //                 bottom: 0,
    //                 color: ColorsApp.MAINCOLOR,
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
  }
}
