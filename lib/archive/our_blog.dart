// import 'package:flutter/material.dart';
// import 'package:ui/helper/screen_size.dart';
// import 'package:ui/model/card.our_blog.dart';
// import 'package:ui/screens/home/sections/our_blog_section/new/custom_card_our_blog.dart';

// class OurBlog extends StatelessWidget {
//   const OurBlog({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: ScreenSize.isLarge ? 50 : 0),
//       width: _getContainerWidth(),
//       height: _getContainerHeight(),
//       child: Column(
//         children: [
//           Container(
//               padding: EdgeInsets.symmetric(
//                 horizontal: ScreenSize.isLarge ? 250 : 0,
//               ),
//               child: Column(
//                 children: [
//                   _title(),
//                   _description(),
//                 ],
//               )),
//           const SizedBox(height: 50),
//           Flexible(
//             child: SizedBox(
//               height: 1450,
//               child: _getBlogCard(),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// double _getContainerWidth() {
//   return ScreenSize.isLarge
//       ? 1596
//       : ScreenSize.isMedium
//           ? 1280
//           : 358;
// }

// double _getContainerHeight() {
//   return ScreenSize.isLarge
//       ? 1750
//       : ScreenSize.isMedium
//           ? 1600
//           : 1950;
// }

// Widget _title() {
//   return const Text(
//     'Our Blogs',
//     style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
//   );
// }

// Widget _description() {
//   return const Text(
//     "Our blog is a treasure trove of informative and engaging articles written by our team of nutritionists, dietitians, and wellness experts. Here's what you can expect from our blog.",
//     style: TextStyle(fontSize: 18),
//   );
// }

// Widget _getBlogCard() {
//   if (ScreenSize.isLarge) {
//     final List<CardOurBlogModel> cardOurBlog = CardOurBlogModel.cardFeature;
//     return GridView.builder(
//         itemCount: 9,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 2,
//           mainAxisSpacing: 5,
//           mainAxisExtent: 720,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return CustomCardOurBlog(
//             cardOurBlogModel: cardOurBlog[index],
//           );
//         });
//   } else if (ScreenSize.isMedium) {
//     return GridView.builder(
//         itemCount: 9,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 2,
//           mainAxisSpacing: 5,
//           mainAxisExtent: 630,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return CustomCardOurBlog(
//             cardOurBlogModel: CardOurBlogModel.cardFeature[index],
//           );
//         });
//   } else {
//     return Expanded(
//       child: ListView.builder(
//           itemCount: 9,
//           physics: const NeverScrollableScrollPhysics(),
//           scrollDirection: Axis.vertical,
//           itemBuilder: (BuildContext context, int index) {
//             return CustomCardOurBlog(
//               cardOurBlogModel: CardOurBlogModel.cardFeature[index],
//             );
//           }),
//     );
//   }
// }
