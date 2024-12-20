// import 'package:flutter/material.dart';

// import 'about_custom_card.dart';
// import '../../../../../archive/custom_card_tablet.dart';
// import 'package:ui/model/card_about.dart';

// class CustomGridViewTablet extends StatelessWidget {
//   CustomGridViewTablet({super.key});
//   final List cardCompany = CardCompanyAbout.cardCompany;
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         padding: const EdgeInsets.symmetric(horizontal: 3),
//         itemCount: cardCompany.length,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisExtent: 200,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return AboutCustomCard(
//             cardCompanyAbout: cardCompany[index],
//           );
//         });
//   }
// }
