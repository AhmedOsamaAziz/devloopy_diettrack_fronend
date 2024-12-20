import 'package:flutter/material.dart';
import 'package:ui/model/general/card_process.dart';
 import 'package:ui/screens/process_page/sections/card_numbers/widget/tablet_card_process.dart';

class TabletCardNumberProcess extends StatelessWidget {
  const TabletCardNumberProcess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List cardProcess = CardProcess.cardProcess;

    return Container(
        height: 1300,
        width: 900,
        padding: const EdgeInsets.only(top: 20),
        child: Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cardProcess.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250,
            ),
            itemBuilder: (context, index) {
              return TabletCustomCardProcess(
                cardProcess: cardProcess[index],
              );
            },
          ),
        ));
  }
}
