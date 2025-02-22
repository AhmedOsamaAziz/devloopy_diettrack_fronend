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
      child: CustomScrollView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CustomCardManagment(
                  cardManagmentTeam: cardManagmentTeam[index],
                );
              },
              childCount: cardManagmentTeam.length,
            ),
          ),
        ],
      ),
    );
  }
}
