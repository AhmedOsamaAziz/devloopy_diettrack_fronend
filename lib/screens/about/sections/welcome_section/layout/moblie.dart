import 'package:flutter/material.dart';
import 'package:ui/screens/about/sections/welcome_section/widget/welcome_custom_header.dart';

class MoblieWelcomeSection extends StatelessWidget {
  const MoblieWelcomeSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: FittedBox(
        child: SizedBox(
          height: 800,
          width: 358,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  child: Image.asset('assets/images/about-main.png',
                      width: 358.5, height: 100, fit: BoxFit.cover),
                ),
              ),
              const SizedBox(height: 10),
              const WelcomeCustomHeader()
            ],
          ),
        ),
      ),
    );
  }
}

// class MobilelcomeSection extends StatelessWidget {
//   const MobilelcomeSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: Container(
//           margin: const EdgeInsets.only(right: 20, left: 20),
//           padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
//           width: 358,
//           height: 790,
//           decoration: BoxDecoration(
//               color: ColorsApp.OUTLINECOLOR,
//               borderRadius: BorderRadius.circular(12)),
//           child: const Column(
//             children: [
//               WelcomeTitle(),
//               SizedBox(height: 10),
//               Expanded(child: WelcomDescription())
//             ],
//           )),
//     );
//   }
// }
