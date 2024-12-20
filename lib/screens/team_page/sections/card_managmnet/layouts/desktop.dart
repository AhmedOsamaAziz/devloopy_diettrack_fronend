import 'package:flutter/material.dart';
import 'package:ui/model/general/card_managment_team.dart';
import 'package:ui/screens/team_page/sections/card_managmnet/widget/custom_card_management.dart';

class DeskTopCardManagment extends StatelessWidget {
  const DeskTopCardManagment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List cardManagmentTeam = CardManagmentTeam.cardManagmentTeam;
    return Center(
      child: SizedBox(
        height: 450,
        child: Center(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: cardManagmentTeam.length,
            itemBuilder: (context, index) {
              return Center(
                child: CustomCardManagment(
                  cardManagmentTeam: cardManagmentTeam[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
