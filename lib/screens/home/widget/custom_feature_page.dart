// // import 'package:flutter/material.dart';
// // import 'custom_card_feature.dart';

// // class CustomFeaturesPage extends StatelessWidget {
// //   const CustomFeaturesPage({
// //     super.key,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return const Padding(
// //       padding: EdgeInsets.symmetric(horizontal: 40.0),
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Row(
// //               // #1
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 CustomCardFeatures(
// //                   height: 160,
// //                   width: 500,
// //                   image: 'assets/images/one.png',
// //                   title: 'Personalized Nutrition Plans',
// //                   subTitle:
// //                       'Receive a tailored nutrition plan designed specifically for your body and goals. Our certified nutritionists will consider your unique needs, dietary preferences, and health conditions to create a plan that suits you best.',
// //                 ),
// //                 SizedBox(height: 20),
// //                 CustomCardFeatures(
// //                     height: 160,
// //                     width: 500,
// //                     image: 'assets/images/two.png',
// //                     title: 'Guidance from Certified Nutritionists',
// //                     subTitle:
// //                         'Our team of experienced and certified nutritionists will provide professional guidance and support throughout your journey. They will answer your questions, address your concerns, and keep you motivated as you work towards your goals.'),
// //               ]),
// //           Row(
// //               // # 2
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 CustomCardFeatures(
// //                     height: 160,
// //                     width: 500,
// //                     image: 'assets/images/chiken.png',
// //                     title: 'Food Tracking and Analysis',
// //                     subTitle:
// //                         'Effortlessly track your food intake using our user-friendly app. Our nutritionists will analyze your data to provide insights into your eating habits, help you identify areas for improvement, and make personalized recommendations.'),
// //                 SizedBox(height: 20),
// //                 CustomCardFeatures(
// //                     height: 160,
// //                     width: 500,
// //                     image: 'assets/images/four.png',
// //                     title: 'Meal Planning and Recipes',
// //                     subTitle:
// //                         'Access a vast collection of delicious and healthy recipes tailored to your dietary needs. Our nutritionists will also create personalized meal plans, making it easier for you to stay on track and enjoy nutritious meals.'),
// //               ]),
// //           Row(
// //               // # 3
// //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //               children: [
// //                 CustomCardFeatures(
// //                   height: 160,
// //                   width: 500,
// //                   image: 'assets/images/dumbbell.png',
// //                   title: 'Lifestyle and Behavior Coaching',
// //                   subTitle:
// //                       'Achieving sustainable results requires more than just a diet plan. Our nutritionists will work with you to develop healthy habits, address emotional eating, and provide strategies to overcome obstacles along the way.',
// //                 ),
// //                 SizedBox(height: 20),
// //                 CustomCardFeatures(
// //                     height: 160,
// //                     width: 500,
// //                     image: 'assets/images/three.png',
// //                     title: 'Nutritional Education and Workshops',
// //                     subTitle:
// //                         'Expand your knowledge of nutrition through informative articles and educational workshops. Our nutritionists will equip you with the knowledge and tools to make informed choices for long-term success.'),
// //               ]),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'custom_card_feature.dart';

// class CustomFeaturesPage extends StatelessWidget {
//   const CustomFeaturesPage({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//       child: Container(
//         width: 1596,
//         height: 819,
//         child: const Column(
//           children: [
//             Row(children: [
//               CustomCardFeatures(),
//             ]),
//             // Row(
//             //     // # 2
//             //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //     children: [
//             //       CustomCardFeatures(
//             //           height: height * 1 / 4.49,
//             //           width: width * 1 / 2.67,
//             //           image: 'assets/images/chiken.png',
//             //           title: 'Food Tracking and Analysis',
//             //           subTitle:
//             //               'Effortlessly track your food intake using our user-friendly app. Our nutritionists will analyze your data to provide insights into your eating habits, help you identify areas for improvement, and make personalized recommendations.'),
//             //       const SizedBox(height: 20),
//             //       CustomCardFeatures(
//             //           height: height * 1 / 4.49,
//             //           width: width * 1 / 2.67,
//             //           image: 'assets/images/four.png',
//             //           title: 'Meal Planning and Recipes',
//             //           subTitle:
//             //               'Access a vast collection of delicious and healthy recipes tailored to your dietary needs. Our nutritionists will also create personalized meal plans, making it easier for you to stay on track and enjoy nutritious meals.'),
//             //     ]),
//             // Row(
//             //     // # 3
//             //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             //     children: [
//             //       CustomCardFeatures(
//             //         height: height * 1 / 4.49,
//             //         width: width * 1 / 2.67,
//             //         image: 'assets/images/dumbbell.png',
//             //         title: 'Lifestyle and Behavior Coaching',
//             //         subTitle:
//             //             'Achieving sustainable results requires more than just a diet plan. Our nutritionists will work with you to develop healthy habits, address emotional eating, and provide strategies to overcome obstacles along the way.',
//             //       ),
//             //       const SizedBox(height: 20),
//             //       CustomCardFeatures(
//             //           height: height * 1 / 4.49,
//             //           width: width * 1 / 2.67,
//             //           image: 'assets/images/three.png',
//             //           title: 'Nutritional Education and Workshops',
//             //           subTitle:
//             //               'Expand your knowledge of nutrition through informative articles and educational workshops. Our nutritionists will equip you with the knowledge and tools to make informed choices for long-term success.'),
//             //     ]),
//           ],
//         ),
//       ),
//     );
//   }
// }
