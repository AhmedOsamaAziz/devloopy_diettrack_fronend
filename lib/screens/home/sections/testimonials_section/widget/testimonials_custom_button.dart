import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';

class TestmonialsCustomButton extends StatelessWidget {
  const TestmonialsCustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 358,
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: const Color(0xffEEF8D3),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/arrow_left.png'))),
            ),
          ),
          const SizedBox(width: 10),
          ...List.generate(5, (index) {
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    index == 0 ? ColorsApp.MAINCOLOR : const Color(0xffE5F5BD),
              ),
            );
          }),
          const SizedBox(width: 10),
          Card(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: const Color(0xffEEF8D3),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/arrow_right.png'))),
            ),
          ),
        ],
      ),
    );
  }
}
