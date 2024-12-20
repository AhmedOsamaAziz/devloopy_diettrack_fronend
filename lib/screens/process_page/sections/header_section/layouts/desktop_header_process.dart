// ignore: file_names
import 'package:flutter/material.dart';
import 'package:ui/screens/process_page/sections/header_section/widget/process_header_title.dart';
import 'package:ui/screens/process_page/sections/header_section/widget/process_header_description.dart';

class DesktopHeaderProcessSection extends StatelessWidget {
  const DesktopHeaderProcessSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1596,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 1596,
                height: 250,
                decoration: const BoxDecoration(color: Color(0xffF6FBE9)),
                child: Image.asset(
                  'assets/images/backgroundcard.png',
                ),
              ),
              Positioned(
                top: 30,
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: const BoxDecoration(),
                  child: Image.asset(
                    'assets/images/hedaer.png',
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              const Positioned(
                top: 150,
                child: ProcessHeaderTitle(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: .0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              color: const Color(0xffF6FBE9),
              child: const ProcessHeaderDescription(),
            ),
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
