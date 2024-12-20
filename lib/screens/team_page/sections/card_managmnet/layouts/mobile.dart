import 'package:flutter/material.dart';
import 'package:ui/model/general/card_managment_team.dart';
import 'package:ui/screens/team_page/sections/card_managmnet/widget/custom_card_management.dart';

class MobileCardManagment extends StatelessWidget {
  const MobileCardManagment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List cardManagmentTeam = CardManagmentTeam.cardManagmentTeam;

    return Center(
        child: SizedBox(
      height: 1250,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: cardManagmentTeam.length,
        itemBuilder: (context, index) {
          return CustomCardManagment(
            cardManagmentTeam: cardManagmentTeam[index],
          );
        },
      ),
    ));
  }
}
