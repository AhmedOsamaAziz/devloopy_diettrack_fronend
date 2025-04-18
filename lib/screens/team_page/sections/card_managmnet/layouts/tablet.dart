import 'package:flutter/material.dart';
import 'package:ui/model/general/card_managment_team.dart';
import 'package:ui/screens/team_page/sections/card_managmnet/widget/custom_card_management.dart';

class TabletCardManagment extends StatelessWidget {
  const TabletCardManagment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List cardManagmentTeam = CardManagmentTeam.cardManagmentTeam;

    return SizedBox(
      height: 400,
      child: Center(
        child: RepaintBoundary(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: cardManagmentTeam.length,
            itemBuilder: (context, index) {
              return CustomCardManagment(
                cardManagmentTeam: cardManagmentTeam[index],
              );
            },
          ),
        ),
      ),
    );
  }
}
