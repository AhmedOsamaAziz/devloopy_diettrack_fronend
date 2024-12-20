import 'package:flutter/material.dart';
import 'package:ui/screens/process_page/sections/how-it-work-section/widget/process_description_how_work_it.dart';
import 'package:ui/screens/process_page/sections/how-it-work-section/widget/process_title_how_work_it.dart';

class DesktopHowItWorkSection extends StatelessWidget {
  const DesktopHowItWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 150, left: 150),
        padding: const EdgeInsets.only(right: 150, left: 150),
        width: 1596,
        height: 136,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: const Column(
          children: [
            Expanded(
              child: ProcessTitleHowWorkIt(),
            ),
            Expanded(
              child: ProcessDescriptionHowWorkIt(),
            ),
          ],
        ));
  }
}
