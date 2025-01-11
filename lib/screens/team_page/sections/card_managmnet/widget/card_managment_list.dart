import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/card_managment_team.dart';
import 'package:ui/screens/team_page/sections/card_managmnet/widget/custom_card_management.dart';

class CardManagmentList extends StatelessWidget {
  const CardManagmentList({super.key});

  @override
  Widget build(BuildContext context) {
    final List cardManagmentTeam = CardManagmentTeam.cardManagmentTeam;

    return ScreenSize.isLarge
        ? SizedBox(
            height: ScreenSize.isLarge ? 450 : 400,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardManagmentTeam.length,
              itemBuilder: (context, index) {
                return CustomCardManagment(
                  cardManagmentTeam: cardManagmentTeam[index],
                );
              },
            ),
          )
        : SizedBox(
            child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: cardManagmentTeam.length,
            itemBuilder: (context, index) {
              return CustomCardManagment(
                cardManagmentTeam: cardManagmentTeam[index],
              );
            },
          ));
  }
}
