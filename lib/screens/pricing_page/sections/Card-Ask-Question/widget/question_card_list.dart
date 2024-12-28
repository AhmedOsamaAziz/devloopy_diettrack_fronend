import 'package:flutter/material.dart';
import 'package:ui/data/ask_question.dart';
 import 'package:ui/helper/screen_size.dart';
 import 'package:ui/screens/pricing_page/sections/Card-Ask-Question/widget/custom_question.dart';

 
class QuestionCardList extends StatelessWidget {
  const QuestionCardList({super.key});
 
  @override
  Widget build(BuildContext context) {
    List ask = AskQuestion.askQuestions;
    return SizedBox(
      width: 700,
      child: Center(
        child: SizedBox(
          height: ScreenSize.isLarge ? 500 : 850,
          width: MediaQuery.of(context).size.width * 1 / 2,
          child: ListView.builder(
            //   physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 20,
            ),
            itemCount: ask.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomQuestion(
                  askQuestion: ask[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
