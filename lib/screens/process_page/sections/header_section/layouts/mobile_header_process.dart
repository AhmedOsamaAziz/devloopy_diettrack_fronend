import 'package:flutter/material.dart';
import 'package:ui/screens/process_page/sections/header_section/widget/process_header_description.dart';
import 'package:ui/screens/process_page/sections/header_section/widget/process_header_title.dart';

class MobileHeaderProcessSection extends StatelessWidget {
  const MobileHeaderProcessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              width: 450,
              height: 200,
              decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
              child: Image.asset(
                'assets/images/backgroundcard.png',
                width: 450,
                height: 200,
              ),
            ),
            Positioned(
              top: 30,
              child: Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(),
                child: Image.asset(
                  'assets/images/hedaer.png',
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            const Positioned(
              top: 100,
              child: ProcessHeaderTitle(),
            ),
          ],
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: const Color(0xffF6FBE9),
            child: const ProcessHeaderDescription()),
      ],
    );
  }
}
