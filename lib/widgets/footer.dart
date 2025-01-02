// import 'package:flutter/material.dart';
// import '../Constants/constants.dart';

// class Footer extends StatefulWidget {
//   const Footer({super.key});

//   @override
//   State<Footer> createState() => _FooterState();
// }

// class _FooterState extends State<Footer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 299.0,
//       decoration: const BoxDecoration(
//         color: ColorsApp.TextColor,
//       ),
//       child: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 162.0),
//         child: Column(
//           children: [
//             Expanded(
//               child: Row(
//                 children: [
//                   const Expanded(
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.settings,
//                           size: 35.0,
//                           color: ColorsApp.TitleColorFeatures,
//                         ),
//                         Text(
//                           "DietTrack",
//                           style: TextStyle(
//                             color: Color(0xFFFFFFFF),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                       flex: 2,
//                       child: Row(
//                         children: [
//                           TextButton(
//                               onPressed: () {},
//                               child: const Text(
//                                 "Home",
//                                 style: TextStyle(
//                                   color: Color(0xFFFFFFFF),
//                                   fontSize: 15.0,
//                                   fontWeight: FontWeight.w600,
//                                   fontFamily: FontsApp.fontFamilyUrbanist,
//                                 ),
//                               )),
//                           TextButton(
//                               onPressed: () {},
//                               child: const Text(
//                                 "About",
//                                 style: TextStyle(
//                                   color: Color(0xFFFFFFFF),
//                                   fontSize: 15.0,
//                                   fontWeight: FontWeight.w600,
//                                   fontFamily: FontsApp.fontFamilyUrbanist,
//                                 ),
//                               )),
//                           TextButton(
//                               onPressed: () {},
//                               child: const Text("Team",
//                                   style: TextStyle(
//                                     color: Color(0xFFFFFFFF),
//                                     fontSize: 15.0,
//                                     fontWeight: FontWeight.w600,
//                                     fontFamily: FontsApp.fontFamilyUrbanist,
//                                   ))),
//                           TextButton(
//                               onPressed: () {},
//                               child: const Text("Process",
//                                   style: TextStyle(
//                                     color: Color(0xFFFFFFFF),
//                                     fontSize: 15.0,
//                                     fontWeight: FontWeight.w600,
//                                     fontFamily: FontsApp.fontFamilyUrbanist,
//                                   ))),
//                           TextButton(
//                               onPressed: () {},
//                               child: const Text("Pricing",
//                                   style: TextStyle(
//                                     color: Color(0xFFFFFFFF),
//                                     fontSize: 15.0,
//                                     fontWeight: FontWeight.w600,
//                                     fontFamily: FontsApp.fontFamilyUrbanist,
//                                   ))),
//                           TextButton(
//                               onPressed: () {},
//                               child: const Text("Blog",
//                                   style: TextStyle(
//                                     color: Color(0xFFFFFFFF),
//                                     fontSize: 15.0,
//                                     fontWeight: FontWeight.w600,
//                                     fontFamily: FontsApp.fontFamilyUrbanist,
//                                   ))),
//                           TextButton(
//                               onPressed: () {},
//                               child: const Text("Contact",
//                                   style: TextStyle(
//                                     color: Color(0xFFFFFFFF),
//                                     fontSize: 15.0,
//                                     fontWeight: FontWeight.w600,
//                                     fontFamily: FontsApp.fontFamilyUrbanist,
//                                   ))),
//                         ],
//                       )),
//                   Row(
//                     children: [
//                       const Text(
//                         "Got To Top",
//                         style: TextStyle(
//                           color: Color(0xFFFFFFFF),
//                           fontSize: 15.0,
//                           fontWeight: FontWeight.w500,
//                           fontFamily: FontsApp.fontFamilyUrbanist,
//                         ),
//                       ),
//                       const Card(),
//                       IconButton(
//                           iconSize: 15.0,
//                           style: const ButtonStyle(
//                               backgroundColor: WidgetStatePropertyAll<Color>(
//                             ColorsApp.AppBarColor,
//                           )),
//                           onPressed: () {},
//                           icon: const Icon(
//                             Icons.arrow_upward,
//                             color: Color(0xFFFFFFFF),
//                           ))
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               height: 77.0,
//               decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(Radius.circular(5)),
//                   color: const Color(0xFF2C5446),
//                   border:
//                       Border.all(color: const Color(0xFF346454), width: 1.0)),
//               margin: const EdgeInsets.only(bottom: 50.0),
//               child: Container(
//                 height: 87.0,
//                 width: 1597,
//                 margin: const EdgeInsets.symmetric(
//                     vertical: 16.0, horizontal: 20.0),
//                 child: Form(
//                   child: Row(
//                     children: [
//                       Expanded(
//                           child: Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 10.0),
//                         decoration: BoxDecoration(
//                             borderRadius:
//                                 const BorderRadius.all(Radius.circular(5)),
//                             border: Border.all(
//                                 color: const Color(0xFF346454), width: 1.0)),
//                         child: const ListTile(
//                           leading: Icon(
//                             Icons.mail,
//                             color: ColorsApp.TitleColorFeatures,
//                             size: 20.0,
//                           ),
//                           title: Text(
//                             "Ahmed.Madkour@gmail.com",
//                             style: TextStyle(
//                               fontSize: 9.0,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: FontsApp.fontFamilyUrbanist,
//                               color: Color(0xFFFFFFFF),
//                             ),
//                           ),
//                         ),
//                       )),
//                       Expanded(
//                           child: Container(
//                         margin: const EdgeInsets.only(right: 10.0),
//                         decoration: BoxDecoration(
//                             borderRadius:
//                                 const BorderRadius.all(Radius.circular(5)),
//                             border: Border.all(
//                                 color: const Color(0xFF346454), width: 1.0)),
//                         child: const ListTile(
//                           leading: Icon(
//                             Icons.phone,
//                             color: ColorsApp.TitleColorFeatures,
//                             size: 20.0,
//                           ),
//                           title: Text(
//                             "+002000020200",
//                             style: TextStyle(
//                               fontSize: 12.0,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: FontsApp.fontFamilyUrbanist,
//                               color: Color(0xFFFFFFFF),
//                             ),
//                           ),
//                         ),
//                       )),
//                       Expanded(
//                           child: Container(
//                         margin: const EdgeInsets.only(right: 10.0),
//                         decoration: BoxDecoration(
//                             borderRadius:
//                                 const BorderRadius.all(Radius.circular(5)),
//                             border: Border.all(
//                                 color: const Color(0xFF346454), width: 1.0)),
//                         child: const ListTile(
//                           leading: Icon(
//                             Icons.location_on,
//                             color: ColorsApp.TitleColorFeatures,
//                             size: 20.0,
//                           ),
//                           title: Text(
//                             "SomeWhere in the World",
//                             style: TextStyle(
//                               fontSize: 12.0,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: FontsApp.fontFamilyUrbanist,
//                               color: Color(0xFFFFFFFF),
//                             ),
//                           ),
//                         ),
//                       )),
//                       const Expanded(
//                           flex: 2,
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Icon(
//                                 Icons.copyright,
//                                 color: Color(0xFFFFFFFF),
//                                 size: 16.0,
//                               ),
//                               Text(
//                                 "2024 ZTechNotion.All rights reserved",
//                                 style: TextStyle(
//                                   color: Color(0xFFFFFFFF),
//                                   fontSize: 18.0,
//                                   fontWeight: FontWeight.w400,
//                                   fontFamily: FontsApp.fontFamilyUrbanist,
//                                 ),
//                               )
//                             ],
//                           ))
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
