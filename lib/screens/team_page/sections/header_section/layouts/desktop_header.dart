import 'package:flutter/material.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/screens/team_page/sections/header_section/widget/team_page_description.dart';
import 'package:ui/screens/team_page/sections/header_section/widget/team_page_title.dart';

class DesktopHeaderTeamSection extends StatelessWidget {
  const DesktopHeaderTeamSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1596,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 1596,
                height: 250,
                decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
                child: Image.asset(
                  Assets.imagesBackgroundcard,
                ),
              ),
              Positioned(
                top: 30,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    Assets.imagesHedaer,
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              const Positioned(
                top: 150,
                child: TeamPageTitle(),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            color: const Color(0xffF6FBE9),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 150),
              child: TeamPageDescription(),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
