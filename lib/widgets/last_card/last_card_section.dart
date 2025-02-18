import 'package:flutter/material.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/widgets/last_card/widget/custom_card.dart';

class LastCardSections extends StatelessWidget {
  const LastCardSections({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
        lastCardModel: LastCardModel(
            text: 'We Are Proud of Our Achievement',
            subTitle:
                "But our ultimate satisfaction comes from seeing our clients achieve their goals and live healthier, happier lives. Join Nutritionist today and embark on your own transformative journey towards optimal health and well-being.",
            textbtn: "Book a Demo"));
  }
}
