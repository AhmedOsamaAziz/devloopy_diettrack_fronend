import 'package:ui/screens/contact_us/sections/contact_us_buttons/Widget/custom_button_item.dart';
import 'package:flutter/material.dart';
import 'package:ui/model/general/contact_us_button.dart';

class TabletButtonSupporting extends StatelessWidget {
  const TabletButtonSupporting({super.key});

  @override
  Widget build(BuildContext context) {
    final contactBtn = ContactUsButton.contactUs;
    return SizedBox(
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
            }));
    // Container(
    //     height: 200,
    //     width: 1280,
    //     decoration: const BoxDecoration(
    //         color: Color(0xff234338),
    //         borderRadius: BorderRadius.only(
    //           bottomLeft: Radius.circular(10),
    //           bottomRight: Radius.circular(10),
    //         )),
    //     padding: const EdgeInsets.symmetric(horizontal: 20),
    //     margin: const EdgeInsets.symmetric(horizontal: 20),
    //     child: const Row(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Expanded(
    //             child: CustomButtonSupportingItem(
    //                 height: 110,
    //                 width: 250,
    //                 text: "support@nutritionist.com",
    //                 icon: Icons.mail),
    //           ),
    //           SizedBox(width: 15),
    //           Expanded(
    //             child: CustomButtonSupportingItem(
    //                 height: 110,
    //                 width: 250,
    //                 text: "+002000020200",
    //                 icon: Icons.phone),
    //           ),
    //           SizedBox(width: 15),
    //           Expanded(
    //             child: CustomButtonSupportingItem(
    //                 height: 110,
    //                 width: 250,
    //                 text: "Some Where in the World",
    //                 icon: Icons.location_on),
    //           )
    //         ]));
  }
}
