class CardManagmentTeam {
  final String image;
  final String name;
  final String jobTitle;

  CardManagmentTeam({
    required this.image,
    required this.name,
    required this.jobTitle,
  });

  static List<CardManagmentTeam> cardManagmentTeam = [
    CardManagmentTeam(
      image: 'assets/images/cardTeampage.png',
      name: 'Rachel Adams',
      jobTitle: 'Chief Marketing Officer',
    ),
    CardManagmentTeam(
        image: 'assets/images/cardTeampage2.png',
        name: 'Rachel Adams',
        jobTitle: 'Chief Marketing Officer'),
    CardManagmentTeam(
        image: 'assets/images/cardTeampage3.png',
        name: 'Rachel Adams',
        jobTitle: 'Chief Marketing Officer'),
    CardManagmentTeam(
      image: 'assets/images/cardTeampage4.png',
      name: 'Rachel Adams',
      jobTitle: 'Chief Marketing Officer',
    ),
  ];
}
