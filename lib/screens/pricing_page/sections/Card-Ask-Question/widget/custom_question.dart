import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/data/ask_question.dart';
import 'package:ui/helper/font_size_responsive.dart';

class CustomQuestion extends StatelessWidget {
  const CustomQuestion({super.key, required this.askQuestion});
  final AskQuestion askQuestion;

  String getShortText(String text, int charLimit) {
    if (text.length > charLimit) {
      return '${text.substring(0, charLimit)}...';
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsApp.OUTLINECOLOR,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ExpansionTile(
        key: Key(askQuestion.question),
        title: Text(
          getShortText(askQuestion.question, 50),
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: getResponsiveFontSize(context, fontSize: 13)),
        ),
        trailing: Image.asset(askQuestion.imagePath, height: 24, width: 24),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              askQuestion.question,
              textAlign: TextAlign.start,
              style: const TextStyle(color: ColorsApp.TextColorFeatures),
            ),
          ),
        ],
      ),
    );
  }
}
