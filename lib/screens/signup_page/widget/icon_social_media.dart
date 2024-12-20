import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconSocialMedia extends StatelessWidget {
  const IconSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffCBEA7B),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.google)),
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffCBEA7B),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.twitter)),
        ),
        const SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xffCBEA7B),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: IconButton(
              onPressed: () {}, icon: const Icon(FontAwesomeIcons.linkedin)),
        ),
      ],
    );
  }
}
