import 'package:flutter/material.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/screens/about/sections/last_card/widget/custom_last_card.dart';

class MobileLastCard extends StatelessWidget {
  const MobileLastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLastCard(
        lastCardModel: LastCardModel(
            text: 'We Are Proud of Our Achievement',
            subTitle:
                "But our ultimate satisfaction comes from seeing our clients achieve their goals and live healthier, happier lives. Join Nutritionist today and embark on your own transformative journey towards optimal health and well-being.",
            textbtn: "Book a Demo"));
  }
}
