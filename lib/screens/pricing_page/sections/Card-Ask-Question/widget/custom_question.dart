import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/general/ask_question.dart';

 import 'package:ui/widgets/custom_text.dart';

class CustomQuestion extends StatelessWidget {
  const CustomQuestion({
    super.key,
    required this.askQuestion,
  });
  final AskQuestion askQuestion;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: CustomText(
                fontSize: getResponsiveFontSize(context, fontSize: 12),
                fontWeight: FontWeight.w500,
                text: askQuestion.question),
          ),
          const SizedBox(height: 50),
          SizedBox(
            height: 30,
            width: 30,
            child: SvgPicture.asset(askQuestion.image),
          ),
        ]);
  }
}
