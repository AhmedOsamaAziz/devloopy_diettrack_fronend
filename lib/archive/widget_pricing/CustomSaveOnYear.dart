// import 'package:flutter/material.dart';

// import '../../../Constants/constants.dart';
// import '../../../../../../Shared/custom_text.dart';

// class CustomSaveOnYear extends StatelessWidget {
//   const CustomSaveOnYear({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 311,
//       height: 108,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: 99,
//                 height: 47,
//                 child: MaterialButton(
//                     shape: RoundedRectangleBorder(
//                       borderRadius:
//                           BorderRadius.circular(3.0), // Adjust as needed
//                     ),
//                     color: ColorsApp.MAINCOLOR,
//                     onPressed: () {},
//                     child: const Text(
//                       'Monthly',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.w400),
//                     )),
//               ),
//               const SizedBox(width: 10),
//               SizedBox(
//                 width: 99,
//                 height: 47,
//                 child: MaterialButton(
//                     shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.circular(3.0) // Ajust as needed
//                         ),
//                     color: ColorsApp.OUTLINECOLOR,
//                     onPressed: () {},
//                     child: CustomText(
//                       text: 'Yearly',
//                       fontSize: 18,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     )),
//               ),
//             ],
//           ),
//           const SizedBox(height: 20),
//           CustomText(
//             text: 'Save 50% on Yearly',
//             fontSize: 18,
//             fontWeight: FontWeight.w500,
//             color: Colors.black,
//           ),
//         ],
//       ),
//     );
//   }
// }
