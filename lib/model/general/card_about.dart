class CardCompanyAbout {
  final String image;
  final String title;
  final String subTitle;

  const CardCompanyAbout({
    required this.image,
    required this.title,
    required this.subTitle,
  });

  static List<CardCompanyAbout> cardCompany = const [
    CardCompanyAbout(
      image: 'assets/images/dumbbell.png',
      title: '10,000+ Transformations',
      subTitle:
          "Our personalized nutrition plans have helped thousands of individuals reach their weight loss goals and maintain a healthy lifestyle.",
    ),
    CardCompanyAbout(
      image: 'assets/images/one.png',
      title: 'Recognition for Excellence',
      subTitle:
          "Nutritionist has been recognized as a leading provider of personalized nutrition coaching, receiving accolades for our innovative approach and commitment to client success.",
    ),
    CardCompanyAbout(
      image: 'assets/images/chiken.png',
      title: 'Positive Client Reviews',
      subTitle:
          "We have received numerous testimonials from satisfied clients who have experienced significant improvements in their health, weight, and overall well-being through our coaching program.",
    ),
    CardCompanyAbout(
      image: 'assets/images/IconContainer3.png',
      title: 'Collaborate With Top Health.',
      subTitle:
          "Nutritionist has established partnerships with respected nutritionists, dietitians, and health experts to ensure that our clients receive the highest quality guidance and support.",
    ),
  ];
}
