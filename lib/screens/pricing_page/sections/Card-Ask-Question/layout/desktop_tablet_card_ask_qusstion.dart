import 'package:flutter/material.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/ask_your_question.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/question_card_list.dart';

class DesktopAndTabletCardAskQusstion extends StatelessWidget {
  const DesktopAndTabletCardAskQusstion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionCardList(),
          AskYourQuestion(),
        ],
      ),
    );
  }
}
