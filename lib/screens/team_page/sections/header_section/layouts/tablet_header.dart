import 'package:flutter/material.dart';
import 'package:ui/constants/assets.dart';
import 'package:ui/screens/team_page/sections/header_section/widget/team_page_description.dart';
import 'package:ui/screens/team_page/sections/header_section/widget/team_page_title.dart';

class TabletHeaderTeamSection extends StatelessWidget {
  const TabletHeaderTeamSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 1280,
              height: 250,
              decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
              child: Image.asset(
                Assets.imagesBackgroundcard,
              ),
            ),
            Positioned(
              top: 50,
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(),
                child: Image.asset(
                  Assets.imagesHedaer,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            const Positioned(top: 150, child: TeamPageTitle()),
          ],
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            color: const Color(0xffF6FBE9),
            child: const TeamPageDescription()),
      ],
    );
  }
}
