import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui/constants/assets.dart';

class IntroductionImage extends StatelessWidget {
  const IntroductionImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'tag',
      child: ClipRRect(
        borderRadius: const BorderRadius.only(bottomRight: Radius.circular(50)),
        child: Image.asset(
          Assets.images222,
          fit: BoxFit.cover,
          height: MediaQuery.sizeOf(context).height * 0.8,
        ),
      ),
    );
  }
}
