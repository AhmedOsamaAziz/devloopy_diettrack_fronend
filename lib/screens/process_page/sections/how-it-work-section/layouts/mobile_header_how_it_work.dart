import 'package:flutter/material.dart';
import 'package:ui/screens/process_page/sections/how-it-work-section/widget/process_description_how_work_it.dart';
import 'package:ui/screens/process_page/sections/how-it-work-section/widget/process_title_how_work_it.dart';

class MobileHowItWorkSection extends StatelessWidget {
  const MobileHowItWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: 358,
        height: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            ProcessTitleHowWorkIt(),
            SizedBox(height: 15),
            Expanded(
              child: ProcessDescriptionHowWorkIt(),
            ),
          ],
        ));
  }
}
