// import 'package:flutter/material.dart';
// import 'package:ui/helper/screen_size.dart';
// import 'package:ui/screens/home/sections/feature_section/new/feature_card.dart';

// class FeatureSection extends StatelessWidget {
//   const FeatureSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: ScreenSize.isLarge ? 100 : 10),
//       height: ScreenSize.height == 1008 ? 800 : 358,
//       width: ScreenSize.width == 1596 ? 1280 : 800,
//       child: Column(
//         children: [
//           _title(context),
//           _description(context),
//           const SizedBox(height: 30),
//           _featureListd(context),
//         ],
//       ),
//     );
//   }
// }

// Widget _title(BuildContext context) {
//   return const Text(
//     'Features',
//     style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//   );
// }

// Widget _description(BuildContext context) {
//   return const Text(
//     "Welcome to the Feature Section of Nutritionist, your ultimate destination for all things nutrition and wellness.",
//     style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
//   );
// }

// Widget _featureListd(BuildContext context) {
//   if (ScreenSize.isLarge || ScreenSize.isMedium) {
//     return Expanded(
//       child: GridView.builder(
//           itemCount: 4,
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 2,
//             mainAxisSpacing: 50,
//             mainAxisExtent: 240,
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             return const FeatureCard();
//           }),
//     );
//   } else {
//     return ListView.builder(
//         itemCount: 2,
//         physics: const NeverScrollableScrollPhysics(),
//         scrollDirection: Axis.vertical,
//         itemBuilder: (context, index) {
//           return const FeatureCard();
//         });
//   }
// }
