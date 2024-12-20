import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/Constants/constants.dart';

import 'package:ui/widgets/custom_text.dart';
import '../widget/custom_button_contact_us.dart';
import '../widget/custom_form_feild.dart';
import '../widget/custom_icon.dart';

class TabletFormContactUs extends StatelessWidget {
  const TabletFormContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        color: ColorsApp.OUTLINECOLOR,
        height: 450,
        width: 1280,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height * 0.75,
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomFromField(
                            text: 'Full Name', hintText: 'Enter your Number'),
                        SizedBox(width: 10),
                        CustomFromField(
                            text: 'Email', hintText: 'Enter your Email'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CustomFromField(
                        text: 'Phone Number', hintText: 'Enter your Number'),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: 'Message', fontSize: 14),
                        const SizedBox(height: 5),
                        TextField(
                          cursorColor: Colors.black,
                          maxLines: 5,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffEEF8D3),
                              hintText: 'Enter your Message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4.0),
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: CustomText(
                        text: 'Max 250 Chars',
                        fontWeight: FontWeight.w500,
                        fontFamily: FontsApp.fontFamilyUrbanist,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomButtonContactUs(
                        onPressed: () {}, text: 'Send Message'),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  right: 50,
                ),
                height: MediaQuery.of(context).size.height * 0.60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Image.asset(
                        "assets/images/Map.png",
                        fit: BoxFit.cover,
                        height: 200,
                        // width: double.infinity,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            CustomIconContactUs(
                                onPressed: () {},
                                icon: FontAwesomeIcons.facebook),
                            const SizedBox(width: 10),
                            CustomIconContactUs(
                                onPressed: () {},
                                icon: FontAwesomeIcons.twitter),
                            const SizedBox(width: 10),
                            CustomIconContactUs(
                              onPressed: () {},
                              icon: FontAwesomeIcons.linkedin,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
