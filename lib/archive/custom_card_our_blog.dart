// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';

// import 'package:ui/helper/screen_size.dart';
// import 'package:ui/model/card.our_blog.dart';

// import '../../../../../Constants/constants.dart';
// import '../../../../../widgets/custom_text.dart';

// class CustomCardOurBlog extends StatelessWidget {
//   const CustomCardOurBlog({
//     super.key,
//     required this.cardOurBlogModel,
//   });
//   final CardOurBlogModel cardOurBlogModel;
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color(0xffF6FBE9),
//       child: Container(
//           padding: EdgeInsets.symmetric(
//             horizontal: ScreenSize.isLarge
//                 ? 20
//                 : ScreenSize.isMedium
//                     ? 10
//                     : 10,
//             vertical: ScreenSize.isLarge
//                 ? 20
//                 : ScreenSize.isMedium
//                     ? 10
//                     : 10,
//           ),
//           width: _getContainerWidth(),
//           height: _getContainerHeight(),
//           child: Column(children: [
//             Container(
//               width: _getContainerWidth2(),
//               height: _getContainerHeight2(),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Image.asset("assets/images/cardsmail2.png"),
//             ),
//             Expanded(
//               child: SizedBox(
//                   width: ScreenSize.width == 600 ? 600 : 310,
//                   height: ScreenSize.height == 284 ? 0 : 303,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       CustomText(
//                           text: cardOurBlogModel.fristText,
//                           fontSize: 18,
//                           color: ColorsApp.TextColor),
//                       CustomText(
//                           text: cardOurBlogModel.headingText,
//                           fontSize: 26,
//                           color: ColorsApp.MAINCOLOR,
//                           fontWeight: FontWeight.bold),
//                       const SizedBox(height: 10),
//                       CustomText(
//                         text: cardOurBlogModel.paragraph,
//                         fontSize: 18,
//                         color: ColorsApp.TextColor,
//                       ),
//                       const SizedBox(height: 10),
//                       Container(
//                         color: const Color(0xffFAFDF2),
//                         padding: EdgeInsets.only(
//                           left: ScreenSize.isLarge ? 20 : 10,
//                           top: ScreenSize.isLarge ? 20 : 10,
//                           right: ScreenSize.isLarge ? 16 : 10,
//                           bottom: ScreenSize.isLarge ? 20 : 0,
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Container(
//                               height: ScreenSize.isLarge
//                                   ? 60
//                                   : ScreenSize.isMedium
//                                       ? 55
//                                       : 40,
//                               width: ScreenSize.isLarge
//                                   ? 60
//                                   : ScreenSize.isMedium
//                                       ? 55
//                                       : 40,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(5),
//                                   image: const DecorationImage(
//                                     image: AssetImage(
//                                         "assets/images/cardsmail2.png"),
//                                   )),
//                             ),
//                             const SizedBox(width: 15),
//                             Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   CustomText(
//                                     text: cardOurBlogModel.nameCustomer,
//                                     fontSize: 20,
//                                     color: ColorsApp.TextColor,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                   CustomText(
//                                     text: cardOurBlogModel.date,
//                                     fontSize: 18,
//                                     color: ColorsApp.TextColor,
//                                   ),
//                                 ]),
//                             const Spacer(),
//                             Container(
//                               width: ScreenSize.isLarge
//                                   ? 60
//                                   : ScreenSize.isMedium
//                                       ? 60
//                                       : 40,
//                               height: ScreenSize.isLarge
//                                   ? 60
//                                   : ScreenSize.isMedium
//                                       ? 40
//                                       : 40,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xffEEF8D3),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(Icons.favorite_border),
//                               ),
//                             ),
//                             const SizedBox(width: 10),
//                             Container(
//                               width: ScreenSize.isLarge
//                                   ? 60
//                                   : ScreenSize.isMedium
//                                       ? 60
//                                       : 35,
//                               height: ScreenSize.isLarge
//                                   ? 60
//                                   : ScreenSize.isMedium
//                                       ? 40
//                                       : 35,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xffEEF8D3),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(Icons.mark_as_unread),
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

// double _getContainerWidth() {
//   return ScreenSize.isLarge
//       ? 600
//       : ScreenSize.isMedium
//           ? 600
//           : 359;
// }

// double _getContainerHeight() {
//   return ScreenSize.isLarge
//       ? 703
//       : ScreenSize.isMedium
//           ? 620
//           : 425;
// }

// double _getContainerWidth2() {
//   return ScreenSize.isLarge
//       ? 550
//       : ScreenSize.isMedium
//           ? 400
//           : 310;
// }

// double _getContainerHeight2() {
//   return ScreenSize.isLarge
//       ? 428
//       : ScreenSize.isMedium
//           ? 300
//           : 200;
// }
