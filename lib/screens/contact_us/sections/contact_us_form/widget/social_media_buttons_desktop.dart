import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/core/url_launcher.dart';
import 'package:ui/screens/contact_us/sections/contact_us_form/widget/custom_icon.dart';

class SocialMediaButtonsDesktop extends StatelessWidget {
  const SocialMediaButtonsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(width: 10),
          CustomIconContactUs(
              onPressed: () => handleButtonClick(
                  context: context, url: 'https://www.facebook.com/'),
              icon: FontAwesomeIcons.facebook),
          const SizedBox(width: 10),
          CustomIconContactUs(
              onPressed: () => handleButtonClick(
                  context: context, url: 'https://www.twitter.com/'),
              icon: FontAwesomeIcons.twitter),
          const SizedBox(width: 10),
          CustomIconContactUs(
            onPressed: () => handleButtonClick(
                context: context, url: 'https://www.linkedin.com/'),
            icon: FontAwesomeIcons.linkedin,
          )
        ],
      ),
    );
  }
}
