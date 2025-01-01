import 'package:flutter/material.dart';
import 'package:ui/model/general/card_process.dart';
import 'package:ui/screens/process_page/sections/card_numbers/widget/desktop_custom_card_process.dart';

class DeskTopCardNumberProcess extends StatelessWidget {
  const DeskTopCardNumberProcess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List cardProcess = CardProcess.cardProcess;
    return Container(
        height: 1300,
        width: 1569,
        padding: const EdgeInsets.only(top: 30),
        child: Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(60),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cardProcess.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
            ),
            itemBuilder: (context, index) {
              return DesktopCustomCardProcess(cardProcess: cardProcess[index]);
            },
          ),
        ));
  }
}
