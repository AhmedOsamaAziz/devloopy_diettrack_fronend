import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/widgets/custom_text.dart';
import '../widgets/drawer.dart';

class MobileNavigationBar extends StatelessWidget {
  const MobileNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 168,
      width: 420,
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: const BoxDecoration(color: ColorsApp.MAINCOLOR),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          UpparAppBar(),
          UnderUppBar(),
        ],
      ),
    );
  }
}

class UpparAppBar extends StatelessWidget {
  const UpparAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.only(top: 15),
          margin: const EdgeInsets.only(top: 30),
          width: 320,
          height: 40,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -7,
                child: Container(
                  decoration: BoxDecoration(
                      color: ColorsApp.AppBarColor,
                      borderRadius: BorderRadius.circular(3),
                      border:
                          Border.all(color: ColorsApp.AppBarColor, width: 1.0)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20,
                        width: 15,
                        child: Image.asset(
                          'assets/images/icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      CustomText(
                        text: 'Join Our Personalized Nutrition Demo For Free',
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 10,
                        width: 13,
                        child: Image.asset(
                          'assets/images/arrow.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: -40,
                child: SizedBox(
                  //? Image Lefit in Abb Bar
                  height: 30,
                  width: 100,
                  child: Image.asset(
                    'assets/images/Abstracdesign.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: -40,
                child: SizedBox(
                  //? Image Lefit in Abb Bar
                  height: 30,
                  width: 100,
                  child: Image.asset(
                    'assets/images/Abstracdesign.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          )

          //  Row(

          //   children: [
          //     SizedBox(
          //       //? Image Lefit in Abb Bar
          //       height: 30,
          //       width: 140,
          //       child: Image.asset(
          //         'assets/images/Abstract _design.png',
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     const SizedBox(width: 20),
          //     Row(
          //       children: [
          //         SizedBox(
          //           height: 20,
          //           width: 15,
          //           child: Image.asset(
          //             'assets/images/icon.png',
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //         const SizedBox(width: 10),
          //         CustomText(
          //           text: 'Join Our Personalized Nutrition Demo For Free',
          //           fontWeight: FontWeight.normal,
          //           fontFamily: FontsApp.fontFamilyUrbanist,
          //           fontSize: 11,
          //           color: Colors.white,
          //         ),
          //         const SizedBox(width: 20),
          //         SizedBox(
          //           height: 10,
          //           width: 13,
          //           child: Image.asset(
          //             'assets/images/arrow.png',
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ],
          //     ),
          //     //
          //     //? Image Right in Abb Bar
          //     SizedBox(
          //       child: SizedBox(
          //         height: 30,
          //         width: 140,
          //         child: Image.asset(
          //           'assets/images/path.png',
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          ),
    );
  }
}

class UnderUppBar extends StatefulWidget {
  const UnderUppBar({
    super.key,
  });

  @override
  State<UnderUppBar> createState() => _UnderUppBarState();
}

class _UnderUppBarState extends State<UnderUppBar> {
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
                return const CustomDrower();
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
