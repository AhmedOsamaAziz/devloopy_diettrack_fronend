import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/ask_your_question.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/question_card_list.dart';

class DesktopAndTabletCardAskQusstion extends StatelessWidget {
  const DesktopAndTabletCardAskQusstion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 50),
      child: const Center(
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: QuestionCardList()),
              VerticalDivider(thickness: 3, color: ColorsApp.SecondaryColor),
              Expanded(child: AskYourQuestion()),
            ],
          ),
        ),
      ),
    );
  }
}
