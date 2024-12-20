import 'package:flutter/material.dart';
import 'package:ui/widgets/custom_header_title.dart';

class CustomHowItWorkHeader extends StatelessWidget {
  const CustomHowItWorkHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.height * 0.8,
      child: const Expanded(
        child: CustomHeaderTitle(
          title: 'How It Works',
          subTitle:
              '''We provide a step-by-step guide on how to get started on your journey towards better health and nutrition. We are here to simplify the process and make it easy for you to navigate our platform and access the \n                            resources you need to achieve your goals. Here's how it works''',
        ),
      ),
    );
  }
}
