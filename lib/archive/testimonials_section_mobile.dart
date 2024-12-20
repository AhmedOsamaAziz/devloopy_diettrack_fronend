// import 'package:flutter/material.dart';
// import '../../../../../Constants/constants.dart';
// import '../../../../../../Shared/custom_text.dart';

// class TestimonialsSectioneOurBlogsMoblie extends StatelessWidget {
//   const TestimonialsSectioneOurBlogsMoblie({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 358,
//       height: MediaQuery.sizeOf(context).height * 2.42,
//       // height: 3000,
//       child: const Column(
//         children: [
//           Text(
//             'Our Blogs',
//             style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20.0),
//             child: Text(
//               "Our blog is a treasure trove of informative and engaging articles written by our team of nutritionists, dietitians, and wellness experts. Here's what you can expect from our blog.",
//               style: TextStyle(fontSize: 14),
//             ),
//           ),
//           SizedBox(height: 20),
//           CustomCardTestmonilsMoblie(
//               mainImage: 'assets/images/MindfulEating.png',
//               fristText: 'Weight Loss',
//               headingText: 'The Benefits of Hydration for Weight Loss',
//               paragraph:
//                   'Discover how staying hydrated can support your weight loss goals and improve overall health.',
//               smailImageCard: 'assets/images/cardTeampage3.png',
//               nameCustomer: 'Emily Johnson',
//               date: '23 May 2023 - 5 min read',
//               iconDataFav: Icons.favorite_outline,
//               iconDataMark: Icons.bookmark_outline),
//           SizedBox(height: 15),
//           CustomCardTestmonilsMoblie(
//               mainImage: 'assets/images/MindfulEating.png',
//               fristText: 'Weight Loss',
//               headingText: 'The Benefits of Hydration for Weight Loss',
//               paragraph:
//                   'Discover how staying hydrated can support your weight loss goals and improve overall health.',
//               smailImageCard: 'assets/images/cardTeampage3.png',
//               nameCustomer: 'Emily Johnson',
//               date: '23 May 2023 - 5 min read',
//               iconDataFav: Icons.favorite_outline,
//               iconDataMark: Icons.bookmark_outline),
//           SizedBox(height: 15),
//           CustomCardTestmonilsMoblie(
//               mainImage: 'assets/images/MindfulEating.png',
//               fristText: 'Weight Loss',
//               headingText: 'The Benefits of Hydration for Weight Loss',
//               paragraph:
//                   'Discover how staying hydrated can support your weight loss goals and improve overall health.',
//               smailImageCard: 'assets/images/cardTeampage3.png',
//               nameCustomer: 'Emily Johnson',
//               date: '23 May 2023 - 5 min read',
//               iconDataFav: Icons.favorite_outline,
//               iconDataMark: Icons.bookmark_outline),
//           SizedBox(height: 15),
//           CustomCardTestmonilsMoblie(
//               mainImage: 'assets/images/MindfulEating.png',
//               fristText: 'Weight Loss',
//               headingText: 'The Benefits of Hydration for Weight Loss',
//               paragraph:
//                   'Discover how staying hydrated can support your weight loss goals and improve overall health.',
//               smailImageCard: 'assets/images/cardTeampage3.png',
//               nameCustomer: 'Emily Johnson',
//               date: '23 May 2023 - 5 min read',
//               iconDataFav: Icons.favorite_outline,
//               iconDataMark: Icons.bookmark_outline),
//           SizedBox(height: 15),
//         ],
//       ),
//     );
//   }
// }

// class ListViewCardBlog extends StatelessWidget {
//   const ListViewCardBlog({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: 4,
//         physics: const NeverScrollableScrollPhysics(),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 80,
//           childAspectRatio: 1,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           return const CustomCardTestmonilsMoblie(
//               mainImage: 'assets/images/MindfulEating.png',
//               fristText: 'Weight Loss',
//               headingText: 'The Benefits of Hydration for Weight Loss',
//               paragraph:
//                   'Discover how staying hydrated can support your weight loss goals and improve overall health.',
//               smailImageCard: 'assets/images/cardTeampage3.png',
//               nameCustomer: 'Emily Johnson',
//               date: '23 May 2023 - 5 min read',
//               iconDataFav: Icons.favorite_outline,
//               iconDataMark: Icons.bookmark_outline);
//         });
//   }
// }

// class CustomCardTestmonilsMoblie extends StatelessWidget {
//   //
//   const CustomCardTestmonilsMoblie({
//     super.key,
//     required this.mainImage,
//     required this.fristText,
//     required this.headingText,
//     required this.paragraph,
//     required this.smailImageCard,
//     required this.nameCustomer,
//     required this.date,
//     this.onPressedFav,
//     this.onPressedMark,
//     required this.iconDataFav,
//     required this.iconDataMark,
//   });

//   final String mainImage;
//   final String fristText;
//   final String headingText;
//   final String paragraph;
//   final String smailImageCard;
//   final String nameCustomer;
//   final String date;
//   final void Function()? onPressedFav;
//   final void Function()? onPressedMark;
//   final IconData iconDataFav;
//   final IconData iconDataMark;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color(0xffF6FBE9),
//       child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           width: 359,
//           height: 425,
//           child: Column(children: [
//             Container(
//               width: 310,
//               height: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Image.asset(
//                 mainImage,
//               ),
//             ),
//             Expanded(
//               child: SizedBox(
//                   width: 310,
//                   height: 303,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(
//                         text: fristText,
//                         fontSize: 14,
//                         color: ColorsApp.TextColor,
//                       ),
//                       const SizedBox(height: 10),
//                       CustomText(
//                         text: headingText,
//                         fontSize: 18,
//                         color: ColorsApp.MAINCOLOR,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       const SizedBox(height: 10),
//                       CustomText(
//                         text: paragraph,
//                         fontSize: 14,
//                         color: ColorsApp.TextColor,
//                       ),
//                       const SizedBox(height: 10),
//                       Container(
//                         color: const Color(0xffFAFDF2),
//                         padding: const EdgeInsets.only(
//                             left: 10, top: 10, right: 10, bottom: 0),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               height: 40,
//                               width: 40,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5),
//                                   image: DecorationImage(
//                                     image: AssetImage(smailImageCard),
//                                   )),
//                             ),
//                             const SizedBox(width: 10),
//                             Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   CustomText(
//                                     text: nameCustomer,
//                                     fontSize: 14,
//                                     color: ColorsApp.TextColor,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   CustomText(
//                                     text: date,
//                                     fontSize: 12,
//                                     color: ColorsApp.TextColor,
//                                   ),
//                                 ]),
//                             const Spacer(),
//                             Container(
//                               height: 35,
//                               width: 35,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xffEEF8D3),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: IconButton(
//                                 onPressed: onPressedFav,
//                                 icon: Icon(iconDataFav),
//                               ),
//                             ),
//                             const SizedBox(width: 10),
//                             Container(
//                               height: 35,
//                               width: 35,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xffEEF8D3),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: IconButton(
//                                 onPressed: onPressedMark,
//                                 icon: Icon(iconDataMark),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   )),
//             )
//           ])),
//     );
//   }
// }
