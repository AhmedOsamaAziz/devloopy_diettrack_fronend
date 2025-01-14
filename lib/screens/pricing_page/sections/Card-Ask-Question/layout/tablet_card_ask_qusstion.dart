import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/ask_your_question.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/question_card_list.dart';

class TabletCustomCardFAQPrincing extends StatelessWidget {
  const TabletCustomCardFAQPrincing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 850, maxHeight: 650),
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
