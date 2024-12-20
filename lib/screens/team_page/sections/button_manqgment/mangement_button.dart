import 'package:flutter/material.dart';
import 'package:ui/model/general/mangement_button.dart';
import 'package:ui/screens/team_page/sections/button_manqgment/widget/custom_button_mangament.dart';

class ButtomTeamPage extends StatelessWidget {
  const ButtomTeamPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List mangementButtons = MangementButton.managmentButtons;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        ),
      ),
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemCount: mangementButtons.length,
        itemBuilder: (context, index) {
          return CustomButtonMangament(
            mangementButtons: mangementButtons[index],
          );
        },
      ),
    );
  }
}
