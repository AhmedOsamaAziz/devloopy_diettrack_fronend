import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/ask_your_question.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/question_card_list.dart';

class MobileCustomCardFAQPrincing extends StatelessWidget {
  const MobileCustomCardFAQPrincing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: QuestionCardList()),
            Divider(thickness: 3, color: ColorsApp.SecondaryColor),
            Expanded(child: AskYourQuestion()),
          ],
        ),
      ),
    );
  }
}
