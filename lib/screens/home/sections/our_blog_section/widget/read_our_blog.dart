// import 'package:flutter/material.dart';

// class ReadOurBlog extends StatelessWidget {
//   const ReadOurBlog({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           spacing: 20,
//           children: [
//             const MainNavigationBar(),
//             const BlogTitle(),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                   horizontal: ScreenSize.isLarge ? 50.0 : 10.0),
//               child: const BlogDescription(),
//             ),
//             Container(
//               height: ScreenSize.isLarge ? height : height * 0.53,
//               width: ScreenSize.isLarge ? width * 0.5 : width * 0.8,
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//               decoration: BoxDecoration(
//                   border:
//                       Border.all(width: 0.2, color: ColorsApp.SecondaryColor)),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10.0),
//                     child: IntrinsicWidth(
//                         child: Column(children: [
//                       CustomText(text: blogList.title),
//                       const Divider(color: ColorsApp.SecondaryColor),
//                       const SizedBox(height: 20),
//                     ])),
//                   ),
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 2),
//                       child: blogList.imageUrl == null
//                           ? null
//                           : Image.network(
//                               blogList.imageUrl!,
//                               errorBuilder: (context, error, stackTrace) {
//                                 return AspectRatio(
//                                   aspectRatio: 1.5,
//                                   child: Image.asset(
//                                     Assets.imagesFitness2,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 );
//                               },
//                             ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10.0),
//                     child: Column(
//                       spacing: 10,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         CustomText(
//                           text: blogList.description,
//                           fontSize:
//                               getResponsiveFontSize(context, fontSize: 14),
//                           fontWeight: FontWeight.bold,
//                         ),
//                         CustomText(
//                           text: blogList.description,
//                           fontSize:
//                               getResponsiveFontSize(context, fontSize: 12),
//                         ),
//                         CustomText(
//                           text: 'Author: ${blogList.author}',
//                           fontSize:
//                               getResponsiveFontSize(context, fontSize: 14),
//                           fontWeight: FontWeight.bold,
//                         ),
//                         CustomText(
//                           text: 'Date: ${blogList.group}',
//                           fontSize:
//                               getResponsiveFontSize(context, fontSize: 12),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const MainFooter(),
//           ],
//         ),
//       ),
//     );

//   }
// }
