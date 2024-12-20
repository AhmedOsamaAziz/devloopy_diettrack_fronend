import 'package:flutter/material.dart';
import 'package:ui/screens/process_page/sections/header_section/widget/process_header_description.dart';
import 'package:ui/screens/process_page/sections/header_section/widget/process_header_title.dart';

class TabletHeaderProcessSection extends StatelessWidget {
  const TabletHeaderProcessSection({
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
              width: 1280,
              height: 250,
              decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
              child: Image.asset(
                'assets/images/backgroundcard.png',
              ),
            ),
            Positioned(
              top: 50,
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
              top: 150,
              child: ProcessHeaderTitle(),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          color: const Color(0xffF6FBE9),
          child: const ProcessHeaderDescription(),
        ),
      ],
    );
  }
}
