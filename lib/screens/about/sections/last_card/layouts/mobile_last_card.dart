import 'package:flutter/material.dart';
import 'package:ui/model/general/last_card_model.dart';
import 'package:ui/screens/about/sections/last_card/widget/custom_last_card.dart';

class MobileLastCard extends StatelessWidget {
  const MobileLastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLastCard(
        lastCardModel: LastCardModel(
            text: 'We Are Proud of Our Achievement',
            subTitle:
                "But our ultimate satisfaction comes from seeing our clients achieve their goals and live healthier, happier lives. Join Nutritionist today and embark on your own transformative journey towards optimal health and well-being.",
            textbtn: "Book a Demo"));

    // Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    //   child: Stack(
    //     children: [
    //       Card(
    //         elevation: 1,
    //         child: Container(
    //           // padding: const EdgeInsets.symmetric(horizontal: 20),
    //           decoration: BoxDecoration(
    //             borderRadius: BorderRadius.circular(12),
    //             color: const Color(0xffF6FBE9),
    //           ),
    //           height: 300,
    //           width: 358,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceAround,
    //             crossAxisAlignment: CrossAxisAlignment.center,
    //             children: [
    //               SizedBox(
    //                 height: 300,
    //                 width: 358,
    //                 child: Padding(
    //                   padding: const EdgeInsets.only(left: 15.0, top: 40),
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       CustomText(
    //                         text: 'We Are Proud of Our Achievement',
    //                         fontWeight: FontWeight.w700,
    //                         fontFamily: FontsApp.fontFamilyUrbanist,
    //                         fontSize: 18,
    //                         color: ColorsApp.MAINCOLOR,
    //                       ),
    //                       const SizedBox(height: 10),
    //                       CustomText(
    //                         text:
    //                             "But our ultimate satisfaction comes seeing our clients achieve their goals and live healthier, happier lives. Join Nutritionist today and embark on your own transformative journey towards optimal health and.",
    //                         fontSize: 12,
    //                         fontWeight: FontWeight.w500,
    //                         color: const Color(0xff333333),
    //                       ),
    //                       const SizedBox(height: 20),
    //                       Container(
    //                         padding: const EdgeInsets.symmetric(horizontal: 10),
    //                         height: 50,
    //                         width: double.infinity,
    //                         child: MaterialButton(
    //                             shape: RoundedRectangleBorder(
    //                               borderRadius: BorderRadius.circular(
    //                                   8.0), // Adjust as needed
    //                             ),
    //                             color: ColorsApp.SecondaryColor,
    //                             onPressed: () {},
    //                             child: const Text(
    //                               "Book a Demo",
    //                               style: TextStyle(
    //                                 color: Colors.black,
    //                                 fontWeight: FontWeight.w500,
    //                                 fontSize: 14,
    //                               ),
    //                             )),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //       Image.asset('assets/images/AbstractDesign.png', height: 70),
    //       Positioned(
    //           bottom: 0,
    //           right: 0,
    //           child:
    //               Image.asset('assets/images/AbstractDesign2.png', height: 70))
    //     ],
    //   ),
    // );
  }
}
