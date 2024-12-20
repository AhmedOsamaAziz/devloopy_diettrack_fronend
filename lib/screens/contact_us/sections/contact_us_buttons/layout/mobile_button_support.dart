import 'package:flutter/material.dart';
import 'package:ui/model/general/contact_us_button.dart';
import 'package:ui/screens/contact_us/sections/contact_us_buttons/Widget/custom_button_item.dart';

class MobileButtonSupporting extends StatelessWidget {
  const MobileButtonSupporting({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBtn = ContactUsButton.contactUs;
    return SizedBox(
      height: 600,
      width: 360,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: contactBtn.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return CustomButtonItem(
              contactUsButton: contactBtn[index],
            );
          }),
    );
    //
    // Container(
    //     width: 350,
    //     height: 400,
    //     decoration: const BoxDecoration(
    //         color: Color(0xff234338),
    //         borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(10),
    //           bottomRight: Radius.circular(10),
    //         )),
    //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    //     margin: const EdgeInsets.symmetric(horizontal: 20),
    //     child: const Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.spaceAround,
    //         children: [
    //           Expanded(
    //             child: CustomButtonSupportingItem(
    //               height: 30,
    //               width: 300,
    //               text: "support@nutritionist.com",
    //               icon: Icons.mail,
    //               fontSizeIcon: 26,
    //               fontSizeText: 16,
    //             ),
    //           ),
    //           Expanded(
    //             child: CustomButtonSupportingItem(
    //               height: 30,
    //               width: 300,
    //               text: "+002000020200",
    //               icon: Icons.phone,
    //               fontSizeIcon: 26,
    //               fontSizeText: 16,
    //             ),
    //           ),
    //           Expanded(
    //             child: CustomButtonSupportingItem(
    //               height: 30,
    //               width: 300,
    //               text: "Some Where in the World",
    //               icon: Icons.location_on,
    //               fontSizeIcon: 26,
    //               fontSizeText: 16,
    //             ),
    //           )
    //         ]));
  }
}
