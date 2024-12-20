import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/model/general/contact_us_button.dart';
import 'package:ui/screens/contact_us/sections/contact_us_buttons/Widget/custom_button_item.dart';

class DesktopButtonSupporting extends StatelessWidget {
  const DesktopButtonSupporting({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBtn = ContactUsButton.contactUs;
    return Container(
      color: ColorsApp.MAINCOLOR,
      height: 141,
      width: 1590,
      child: ListView.builder(
          itemCount: contactBtn.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Center(
              child: CustomButtonItem(
                contactUsButton: contactBtn[index],
              ),
            );
          }),
    );

    // Container(
    //     height: 241,
    //     width: 1596,
    //     decoration: const BoxDecoration(
    //         color: Color(0xff234338),
    //         borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(10),
    //           bottomRight: Radius.circular(10),
    //         )),
    //     padding: const EdgeInsets.symmetric(horizontal: 100),
    //     margin: const EdgeInsets.symmetric(horizontal: 100),
    //     child: Row(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           const CustomButtonSupportingItem(
    //               height: 141,
    //               width: 325,
    //               text: "support@nutritionist.com",
    //               icon: Icons.mail),
    //           GestureDetector(
    //             onTap: () {},
    //             child: const CustomButtonSupportingItem(
    //                 height: 141,
    //                 width: 325,
    //                 text: "+002000020200",
    //                 icon: Icons.phone),
    //           ),
    //           const CustomButtonSupportingItem(
    //               height: 141,
    //               width: 325,
    //               text: "Some Where in the World",
    //               icon: Icons.location_on)
    //         ]));
  }
}
