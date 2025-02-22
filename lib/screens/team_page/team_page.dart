import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
 import 'package:ui/screens/team_page/sections/button_manqgment/mangement_button.dart';
import 'package:ui/screens/team_page/sections/card_managmnet/team_page_card_mangament.dart';
import 'package:ui/shared/Footer/main_footer.dart';
import 'package:ui/shared/Navigation_Bar/main_navigation_bar.dart';
import 'package:ui/shared/last_card/last_card_section.dart';
 import 'sections/header_section/main_header.dart';

class TeamPage extends StatelessWidget {
  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            MainNavigationBar(),
            HeaderTeamSection(),
            ButtomTeamPage(),
            TeamPageCardMangament(),
            LastCardSections(),
            MainFooter(),
          ],
        ),
      ),
    );
  }
}
