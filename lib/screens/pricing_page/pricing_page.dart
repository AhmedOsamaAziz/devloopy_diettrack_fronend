import 'package:flutter/material.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/pricing_page/sections/plans/pricing_plan_section.dart';
import 'package:ui/screens/pricing_page/sections/card-ask-question/main_card_ask_qusstion.dart';
import 'package:ui/screens/pricing_page/sections/FAQ-section/FAQ_section.dart';
import 'package:ui/screens/pricing_page/sections/features_plan/features_plan.dart';
import 'package:ui/screens/pricing_page/sections/pricing_button/pricing_button.dart';
import 'package:ui/widgets/Footer/main_footer.dart';
import 'package:ui/widgets/Navigation_Bar/main_navigation_bar.dart';
import 'sections/pricing_header/pricing_header.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize.getScreenSize(context);

    return const Scaffold(
      backgroundColor: Color(0XFFFAFDF2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MainNavigationBar(),
            SizedBox(height: 10),
            PricingSection(),
            SizedBox(height: 30),
            PricingButton(),
            SizedBox(height: 50),
            PricingPalnSection(),
            SizedBox(height: 50),
            FeaturesPlan(),
            SizedBox(height: 20),
            FAQSection(),
            SizedBox(height: 20),
            CradAskQuestionSections(),
            SizedBox(height: 20),
             MainFooter(),
          ],
        ),
      ),
    );
  }
}
