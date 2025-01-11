import 'package:flutter/widgets.dart';
import 'package:ui/helper/font_size_responsive.dart';

class OurStoryTitle extends StatelessWidget {
  const OurStoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      'Our Story ',
      style: TextStyle(
          fontSize: getResponsiveFontSize(context, fontSize: 24),
          fontWeight: FontWeight.w600),
    );
  }
}
