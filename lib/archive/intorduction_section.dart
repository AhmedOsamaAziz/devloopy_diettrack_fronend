// import 'package:flutter/material.dart';
// import 'package:ui/Constants/constants.dart';
// import 'package:ui/helper/font_size_responsive.dart';
// import 'package:ui/helper/screen_size.dart';
// import 'package:ui/widgets/custom_text.dart';

// class IntorductionSection extends StatelessWidget {
//   const IntorductionSection({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: ColorsApp.OUTLINECOLOR,
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       height: ScreenSize.height == 1000 ? 1500 : 150,
//       width: ScreenSize.width == 1596 ? 800 : 150,
//       child: Row(
//         children: [
//           Expanded(
//             child: SizedBox(
//               width: ScreenSize.isLarge ? 1596 : 800,
//               child: ClipRRect(
//                 borderRadius:
//                     const BorderRadius.only(bottomRight: Radius.circular(50)),
//                 child: Image.asset(
//                   "assets/images/mainimage.jpg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               padding: const EdgeInsets.only(
//                   top: 60, bottom: 20, left: 20, right: 60),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   ClipRRect(
//                     child: Image.asset(
//                       'assets/images/Heading.png',
//                       // Transform Your health.
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 360,
//                     child: Divider(
//                       color: Colors.lightGreen,
//                       thickness: 2,
//                     ),
//                   ),
//                   SizedBox(height: ScreenSize.isLarge ? 60 : 10),
//                   CustomText(
//                     text: 'Personalized Nutrition Coaching',
//                     color: ColorsApp.MAINCOLOR,
//                     fontWeight: FontWeight.w800,
//                     fontFamily: 'Urbanist',
//                     fontSize: getResponsiveFontSize(context, fontSize: 40),
//                   ),
//                   SizedBox(height: ScreenSize.isLarge ? 30 : 20),
//                   Expanded(
//                     child: CustomText(
//                       text:
//                           "Welcome to Nutritionist, your partner in achieving optimal health through personalized nutrition coaching. Our certified nutritionists are here to guide you on your weight loss journey, providing customized plans and ongoing support. Start your transformation today and experience tpower of personalized nutrition coaching.",
//                       color: Colors.black,
//                       fontWeight: FontWeight.w500,
//                       fontSize: getResponsiveFontSize(context,
//                           fontSize: ScreenSize.isLarge ? 20 : 18),
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                   Row(
//                     children: [
//                       SizedBox(
//                         width: ScreenSize.width == 160 ? 180 : 180,
//                         height: 50,
//                         child: MaterialButton(
//                             height: 52,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(
//                                   5.0), // Adjust as needed
//                             ),
//                             color: ColorsApp.SecondaryColor,
//                             onPressed: () {},
//                             child: const Text(
//                               'Get Starter Today',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 18,
//                               ),
//                             )),
//                       ),
//                       const SizedBox(width: 20),
//                       SizedBox(
//                         width: ScreenSize.width == 160 ? 180 : 180,
//                         height: 50,
//                         child: MaterialButton(
//                             height: 52,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(
//                                     5.0) // Ajust as needed
//                                 ),
//                             color: ColorsApp.OUTLINECOLOR,
//                             onPressed: () {},
//                             child: CustomText(
//                               text: 'Book a Demo',
//                               fontSize: 18,
//                               // fontFamily: FontsApp.fontFamilyUrbanist,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.black,
//                             )),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 30),
//                   Row(
//                     children: [
//                       Container(
//                           height: 45,
//                           width: 90,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           child: const Stack(
//                             children: [
//                               CircleAvatar(
//                                 radius: 20,
//                                 backgroundImage: AssetImage(
//                                     'assets/images/circle_avatar2.png'), // Replace with your image
//                                 backgroundColor: Colors.transparent,
//                               ),
//                               Positioned(
//                                 left: 25, // Adjust the position as needed
//                                 child: CircleAvatar(
//                                   radius: 20,
//                                   backgroundImage: AssetImage(
//                                       'assets/images/circle_avatar3.png'), // Replace with your image
//                                   backgroundColor: Colors.transparent,
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 45, // Adjust the position as needed
//                                 child: CircleAvatar(
//                                   radius: 20,
//                                   backgroundImage: AssetImage(
//                                       'assets/images/circle_avatar2.png'), // Replace with your image
//                                   backgroundColor: Colors.transparent,
//                                 ),
//                               ),
//                             ],
//                           )),
//                       const SizedBox(width: 10),
//                       Row(
//                         children: [
//                           CustomText(
//                             text: '430 +',
//                             fontSize: ScreenSize.width == 18 ? 16 : 16,
//                             fontWeight: FontWeight.bold,
//                             color: ColorsApp.NumberColor,
//                           ),
//                           const SizedBox(width: 5),
//                           CustomText(
//                             text: 'Happy Customers',
//                             fontSize: ScreenSize.width == 18 ? 16 : 16,
//                             fontWeight: FontWeight.bold,
//                             color: ColorsApp.TextColor,
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
