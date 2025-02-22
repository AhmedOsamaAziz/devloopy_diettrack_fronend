import 'package:flutter/material.dart';
import 'package:ui/data/ask_question.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/widget/custom_question.dart';

class QuestionCardList extends StatelessWidget {
  const QuestionCardList({super.key});

  @override
  Widget build(BuildContext context) {
    List ask = AskQuestion.askQuestions;
    return Center(
      child: SizedBox(
        height: ScreenSize.isLarge
            ? 550
            : ScreenSize.isMedium
                ? 620
                : 500,
        width: MediaQuery.of(context).size.width * 06,
        child: RepaintBoundary(
          child: ListView.builder(
            
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ask.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: CustomQuestion(askQuestion: ask[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
