// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_svg/flutter_svg.dart';

class AskQuestion {
  String question;
  String image;
  AskQuestion({
    required this.question,
    required this.image,
  });
  static List<AskQuestion> askQuestions = [
    AskQuestion(
        question: 'What is personalized nutrition coaching?',
        image: SvgPicture.asset('assets/images/Icon.svg').toString()),
    AskQuestion(
        question:
            'Personalized nutrition coaching involves creating a customized nutrition plan based on your unique goals, preferences, and dietary requirements. Our team of experts will work closely with you to develop a plan that fits your lifestyle and helps you achieve optimal health and wellness.',
        image: SvgPicture.asset('assets/images/Icon.svg').toString()),
    AskQuestion(
        question: 'How can nutrition coaching help me lose weight?',
        image: SvgPicture.asset('assets/images/Icon.svg').toString()),
    AskQuestion(
        question:
            'Can I still enjoy my favorite foods while on a nutrition plan??',
        image: SvgPicture.asset('assets/images/Icon.svg').toString()),
    AskQuestion(
        question: 'How often will I have contact with my nutritionist?',
        image: SvgPicture.asset('assets/images/Icon.svg').toString()),
    AskQuestion(
        question: 'How long will it take to see results?',
        image: SvgPicture.asset('assets/images/Icon.svg').toString()),
    AskQuestion(
        question:
            'Are the meal plans and recipes provided suitable for vegetarians or vegans??',
        image: SvgPicture.asset('assets/images/Icon.svg').toString()),
  ];
}
