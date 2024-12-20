import 'package:flutter/material.dart';

class CardOurBlogModel {
  final String mainImage;
  final String fristText;
  final String headingText;
  final String paragraph;
  final String smailImageCard;
  final String nameCustomer;
  final String date;
  final IconData iconDataFav;
  final IconData iconDataMark;

  const CardOurBlogModel(
      {required this.mainImage,
      required this.fristText,
      required this.headingText,
      required this.paragraph,
      required this.smailImageCard,
      required this.nameCustomer,
      required this.date,
      required this.iconDataFav,
      required this.iconDataMark});

  static List<CardOurBlogModel> cardFeature = const [
    CardOurBlogModel(
        mainImage: 'assets/images/WeightLoss.png',
        fristText: 'Weight Loss',
        headingText: 'The Benefits of Hydration for Weight Loss',
        paragraph:
            'Discover how staying hydrated can support your weight loss goals and improve overall health.',
        smailImageCard: 'assets/images/cardTeampage3.png',
        nameCustomer: 'Emily Johnson',
        date: '23 May 2023 - 5 min read',
        iconDataFav: Icons.favorite_outline,
        iconDataMark: Icons.bookmark_outline),
    CardOurBlogModel(
        mainImage: 'assets/images/MindfulEating.png',
        fristText: 'Weight Loss',
        headingText: 'The Benefits of Hydration for Weight Loss',
        paragraph:
            'Discover how staying hydrated can support your weight loss goals and improve overall health.',
        smailImageCard: 'assets/images/cardTeampage3.png',
        nameCustomer: 'Emily Johnson',
        date: '23 May 2023 - 5 min read',
        iconDataFav: Icons.favorite_outline,
        iconDataMark: Icons.bookmark_outline),
    CardOurBlogModel(
        mainImage: 'assets/images/UnderstandingMacronutrients.png',
        fristText: 'Weight Loss',
        headingText: 'The Benefits of Hydration for Weight Loss',
        paragraph:
            'Discover how staying hydrated can support your weight loss goals and improve overall health.',
        smailImageCard: 'assets/images/cardTeampage3.png',
        nameCustomer: 'Emily Johnson',
        date: '23 May 2023 - 5 min read',
        iconDataFav: Icons.favorite_outline,
        iconDataMark: Icons.bookmark_outline),
    CardOurBlogModel(
        mainImage: 'assets/images/HealthySnacks.png',
        fristText: 'Weight Loss',
        headingText: 'The Benefits of Hydration for Weight Loss',
        paragraph:
            'Discover how staying hydrated can support your weight loss goals and improve overall health.',
        smailImageCard: 'assets/images/cardTeampage3.png',
        nameCustomer: 'Emily Johnson',
        date: '23 May 2023 - 5 min read',
        iconDataFav: Icons.favorite_outline,
        iconDataMark: Icons.bookmark_outline),
  ];
}
