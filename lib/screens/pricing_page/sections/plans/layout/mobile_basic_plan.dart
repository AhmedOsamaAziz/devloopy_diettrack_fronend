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
              basicPlan: basicPlan[index],
            );
          }),
    );
    // Container(
    //     color: const Color(0xffF6FBE9),
    //     padding: const EdgeInsets.symmetric(horizontal: 10),
    //     width: double.infinity,
    //     height: 2100,
    //     child: const Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         Align(
    //           alignment: Alignment.topCenter,
    //           child: MobileCustomCradOurPricingPage(
    //             widthContainer: 350,
    //             heightContainer: 600,
    //             heightContainerSmall: 370,
    //             widthContainerSmall: 330,
    //             title: 'Basic Plan',
    //             subTitle: 'Up to 50% off on Yearly Plan',
    //             paragrph:
    //                 'Personalized nutrition plan tailored to your goals and dietary preferences.',
    //             paragrph1:
    //                 'Access to our mobile app for convenient meal tracking and progress monitoring.',
    //             paragrph2:
    //                 'Email support to address your questions and concerns.',
    //             paragrph3:
    //                 'Regular check-ins with a dedicated nutritionist to review your progress and provide guidance.',
    //             paragrph4:
    //                 'Regular check-ins with a dedicated nutritionist to review your progress and provide guidance.',
    //             amount: "\$49",
    //           ),
    //         ),
    //         Align(
    //           alignment: Alignment.topCenter,
    //           child: MobileCustomCradOurPricingPage(
    //             widthContainer: 350,
    //             heightContainer: 600,
    //             heightContainerSmall: 370,
    //             widthContainerSmall: 330,
    //             title: 'Basic Plan',
    //             subTitle: 'Up to 50% off on Yearly Plan',
    //             paragrph:
    //                 'Personalized nutrition plan tailored to your goals and dietary preferences.',
    //             paragrph1:
    //                 'Access to our mobile app for convenient meal tracking and progress monitoring.',
    //             paragrph2:
    //                 'Email support to address your questions and concerns.',
    //             paragrph3:
    //                 'Regular check-ins with a dedicated nutritionist to review your progress and provide guidance.',
    //             paragrph4:
    //                 'Regular check-ins with a dedicated nutritionist to review your progress and provide guidance.',
    //             amount: "\$79",
    //           ),
    //         ),
    //         Align(
    //           alignment: Alignment.topCenter,
    //           child: MobileCustomCradOurPricingPage(
    //             heightContainer: 770,
    //             widthContainer: 350,
    //             heightContainerSmall: 500,
    //             widthContainerSmall: 330,
    //             title: 'Ultimate Plan',
    //             subTitle: 'Up to 50% off on Yearly Plan  ',
    //             paragrph: 'All the features included in the Basic Plan.',
    //             paragrph1:
    //                 'Unlimited access to video consultations with your dedicated nutritionist for ongoing support and accountability.',
    //             paragrph2:
    //                 'Advanced progress tracking tools to monitor your weight, body measurements, and fitness goals.',
    //             paragrph3:
    //                 'Customized meal plans and recipe suggestions based on your preferences and nutritional needs.',
    //             paragrph4:
    //                 'Priority email and phone support for immediate assistance.',
    //             paragrph5:
    //                 'The Premium Plan is designed for individuals who are committed to achieving significant results and require the highest level of support and personalization.',
    //             amount: "\$99",
    //             bottom: 0,
    //             color: ColorsApp.MAINCOLOR,
    //           ),
    //         ),
    //       ],
    //     ));
  }
}
