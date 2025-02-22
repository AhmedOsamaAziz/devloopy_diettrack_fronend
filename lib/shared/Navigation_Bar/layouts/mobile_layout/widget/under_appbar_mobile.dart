import 'package:flutter/material.dart';
import 'package:ui/shared/Navigation_Bar/layouts/mobile_layout/widget/drawer.dart';
 
class UnderUppBarMobile extends StatefulWidget {
  const UnderUppBarMobile({
    super.key,
  });

  @override
  State<UnderUppBarMobile> createState() => _UnderUppBarMobileState();
}

class _UnderUppBarMobileState extends State<UnderUppBarMobile> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: 1010,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Container(
              height: 40,
              width: 140,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'))),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return CustomDrower(
                  onTabChanged: (value) => {
                    setState(() {
                      activeIndex = value;
                    })
                  },
                );
              }));
            },
            child: Image.asset(
              'assets/images/Icon_drawer.png',
              width: 34,
              height: 34,
            ),
          )
        ],
      ),
    );
  }
}
