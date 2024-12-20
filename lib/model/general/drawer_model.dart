class DrawerModel {
  final String title;
  final String title2;
  final String title3;
  final String title4;
  final String title5;
  final String title6;
  final String title7;

  const DrawerModel({
    required this.title,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.title6,
    required this.title7,
  });

  static List<DrawerModel> drawer = const [
    DrawerModel(
      title: 'Home',
      title2: 'About',
      title3: 'Team',
      title4: 'Process',
      title5: 'Pricing',
      title6: 'Blog',
      title7: 'Contact Us',
    ),
  ];
}
