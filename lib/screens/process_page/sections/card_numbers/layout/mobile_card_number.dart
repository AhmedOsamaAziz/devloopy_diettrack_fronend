import 'package:flutter/material.dart';
import 'package:ui/model/general/card_process.dart';
import 'package:ui/screens/process_page/sections/card_numbers/widget/mobile_card_process.dart';

class MobileCardNumberProcess extends StatelessWidget {
  const MobileCardNumberProcess({super.key});

  @override
  Widget build(BuildContext context) {
    final List cardProcess = CardProcess.cardProcess;
    return SizedBox(
      height: 2000,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: cardProcess.length,
          itemBuilder: (context, index) {
            return MobileCustomCardProcess(
              cardProcess: cardProcess[index],
            );
          }),
    );
  }
}
