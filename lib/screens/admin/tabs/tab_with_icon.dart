import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/screens/admin/constants/app_colors.dart';
import 'package:ui/screens/admin/constants/defaults.dart';
import 'package:ui/helper/ghaps.dart';

class TabWithIcon extends StatelessWidget {
  const TabWithIcon({
    super.key,
    required this.title,
    required this.iconSrc,
    this.isSelected = false,
  });

  final bool isSelected;

  final String title,
      iconSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: AppDefaults.padding * 0.25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            iconSrc,
            height: 24,
            width: 24,
            colorFilter: ColorFilter.mode(
              isSelected ? AppColors.iconBlack : AppColors.textLight,
              BlendMode.srcIn,
            ),
          ),
          gapW4,
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isSelected ? AppColors.iconBlack : null,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
