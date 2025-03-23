 

// // ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ui/constants/assets.dart';

class AskQuestion {
  String question;
  String imagePath;
  AskQuestion({required this.question, required this.imagePath});

  static List<AskQuestion> askQuestions = [
    AskQuestion(
      question: 'What is personalized nutrition coaching?',
      imagePath: Assets.imagesCheckboxright,
    ),
    AskQuestion(
      question:
          'Personalized nutrition coaching involves creating a customized nutrition plan based on your unique goals, preferences, and dietary requirements. Our team of experts will work closely with you to develop a plan that fits your lifestyle and helps you achieve optimal health and wellness.',
      imagePath: Assets.imagesCheckboxright,
    ),
    AskQuestion(
      question: 'How can nutrition coaching help me lose weight?',
      imagePath: Assets.imagesCheckboxright,
    ),
    AskQuestion(
      question:
          'Can I still enjoy my favorite foods while on a nutrition plan?',
      imagePath: Assets.imagesCheckboxright,
    ),
    AskQuestion(
      question: 'How often will I have contact with my nutritionist?',
      imagePath: Assets.imagesCheckboxright,
    ),
    AskQuestion(
      question: 'How long will it take to see results?',
      imagePath: Assets.imagesCheckboxright,
    ),
    AskQuestion(
      question:
          'Are the meal plans and recipes provided suitable for vegetarians or vegans?',
      imagePath: Assets.imagesCheckboxright,
    ),
  ];
}
