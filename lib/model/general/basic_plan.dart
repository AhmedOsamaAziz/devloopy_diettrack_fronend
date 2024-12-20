import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';

class BasicPlan {
  final String title;
  final String subTitle;
  final String paragrph;
  final String paragrph1;
  final String paragrph2;
  final String? paragrph3;
  final String? paragrph4;
  final String? paragrph5;

  final String amount;

  final Color? color;

  BasicPlan(
      {required this.title,
      required this.subTitle,
      required this.paragrph,
      required this.paragrph1,
      required this.paragrph2,
      this.paragrph3,
      this.paragrph4,
      this.paragrph5,
      required this.amount,
      this.color});

  static List<BasicPlan> basicPlans = [
    BasicPlan(
      title: 'Basic Plan',
      subTitle: 'Up to 50% off on Yearly Plan',
      paragrph:
          'Personalized nutrition plan tailored to your goals and dietary preferences.',
      paragrph1:
          'Access to our mobile app for convenient meal tracking and progress monitoring.',
      paragrph2: 'Email support to address your questions and concerns.',
      paragrph3:
          'Regular check-ins with a dedicated nutritionist to review your progress and provide guidance.',
      amount: "\$49",
    ),
    BasicPlan(
      title: 'Premium Plan',
      subTitle: 'Up to 50% off on Yearly Plan',
      paragrph: 'All the features included in the Basic Plan.',
      paragrph1:
          'One-on-one video consultations with your dedicated nutritionist for more personalized guidance and support.',
      paragrph2: 'Recipe recommendations and meal planning assistance.',
      paragrph3:
          'Priority email support for quicker responses to your inquiries.',
      paragrph4:
          'Educational resources and guides to deepen your understanding of nutrition and healthy habits.',
      amount: "\$79",
    ),
    BasicPlan(
      title: 'Ultimate Plan',
      subTitle: 'Up to 50% off on Yearly Plan  ',
      paragrph: 'All the features included in the Basic Plan.',
      paragrph1:
          'Unlimited access to video consultations with your dedicated nutritionist for ongoing support and accountability.',
      paragrph2:
          'Advanced progress tracking tools to monitor your weight, body measurements, and fitness goals.',
      paragrph3:
          'Customized meal plans and recipe suggestions based on your preferences and nutritional needs.',
      paragrph4: 'Priority email and phone support for immediate assistance.',
      paragrph5:
          'The Premium Plan is designed for individuals who are committed to achieving significant results and require the highest level of support and personalization.',
      amount: "\$99",
      color: ColorsApp.MAINCOLOR,
    )
  ];
}
