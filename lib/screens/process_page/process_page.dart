import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/shared/last_card/last_card_section.dart';

import '../../shared/Footer/main_footer.dart';
import 'sections/card_numbers/main_card_number.dart';
import 'sections/header_section/header_section.dart';
import 'sections/how-it-work-section/header_how_it_work_section.dart';

class ProcessPage extends StatelessWidget {
  const ProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          spacing: 30,
          children: [
            HeaderProcessSections(),
            HeaderHowItWorkProcessSections(),
            CardNumberProcessSections(),
            LastCardSections(),
            MainFooter(
              activeIndex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
