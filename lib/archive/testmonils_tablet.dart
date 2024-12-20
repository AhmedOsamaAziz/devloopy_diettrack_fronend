// import 'package:flutter/material.dart';
// import 'package:ui/model/card.our_blog.dart';
// import '../../../../../Constants/constants.dart';

// import '../../../../../widgets/custom_text.dart';

// class TabletCardTestmonils extends StatelessWidget {
//   //
//   const TabletCardTestmonils({
//     super.key,
//     required this.cardOurBlogModel,
//   });

//   final CardOurBlogModel cardOurBlogModel;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color(0xffF6FBE9),
//       child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           width: 600,
//           height: 620,
//           child: Column(children: [
//             Container(
//               width: 400,
//               height: 300,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Image.asset(
//                 cardOurBlogModel.mainImage,
//               ),
//             ),
//             Expanded(
//               child: SizedBox(
//                   width: 600,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(
//                         text: cardOurBlogModel.fristText,
//                         fontSize: 18,
//                         color: ColorsApp.TextColor,
//                       ),
//                       CustomText(
//                         text: cardOurBlogModel.headingText,
//                         fontSize: 26,
//                         color: ColorsApp.MAINCOLOR,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       const SizedBox(height: 10),
//                       CustomText(
//                         text: cardOurBlogModel.paragraph,
//                         fontSize: 18,
//                         color: ColorsApp.TextColor,
//                       ),
//                       const SizedBox(height: 10),
//                       Container(
//                         color: const Color(0xffFAFDF2),
//                         padding: const EdgeInsets.only(
//                             left: 20, top: 20, right: 16, bottom: 20),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               height: 55,
//                               width: 55,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5),
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                         cardOurBlogModel.smailImageCard),
//                                   )),
//                             ),
//                             const SizedBox(width: 15),
//                             Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   CustomText(
//                                     text: cardOurBlogModel.nameCustomer,
//                                     fontSize: 15,
//                                     color: ColorsApp.TextColor,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   CustomText(
//                                     text: cardOurBlogModel.date,
//                                     fontSize: 12,
//                                     color: ColorsApp.TextColor,
//                                   ),
//                                 ]),
//                             Expanded(
//                               child: Container(
//                                 width: 60,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xffEEF8D3),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(cardOurBlogModel.iconDataFav),
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 10),
//                             Expanded(
//                               child: Container(
//                                 width: 60,
//                                 height: 40,
//                                 decoration: BoxDecoration(
//                                   color: const Color(0xffEEF8D3),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: IconButton(
//                                   onPressed: () {},
//                                   icon: Icon(cardOurBlogModel.iconDataMark),
//                                 ),
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
