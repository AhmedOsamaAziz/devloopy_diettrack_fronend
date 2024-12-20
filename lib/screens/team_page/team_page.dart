import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/last_card/main_last_card.dart';
import 'package:ui/screens/team_page/sections/button_manqgment/mangement_button.dart';
import 'package:ui/screens/team_page/sections/card_managmnet/team_page_card_mangament.dart';
import 'package:ui/widgets/Navigation_Bar/main_navigation_bar.dart';

import '../../widgets/Footer/main_footer.dart';
import 'sections/header_section/main_header.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainNavigationBar(),
            SizedBox(height: 60),
            HeaderTeamSection(),
            SizedBox(height: 50),
            ButtomTeamPage(),
            SizedBox(height: 50),

            TeamPageCardMangament(),

            SizedBox(height: 50),

            LastCardSections(),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
