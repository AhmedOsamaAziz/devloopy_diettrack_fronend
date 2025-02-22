import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/screens/admin/constants/app_colors.dart';
import 'package:ui/screens/admin/constants/defaults.dart';
import 'package:ui/helper/ghaps.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({
    super.key,
    required this.name,
    required this.designation,
    required this.imageSrc,
  });

  final String name, designation, imageSrc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDefaults.padding * 0.75),
      decoration: BoxDecoration(
        color: ColorsApp.AppBarColor,
        // borderRadius: BorderRadius.circular(
        // AppDefaults.borderRadius * 1.5,
        // ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0.5,
            blurRadius: 2,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Row(
        children: [
          gapW16,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  designation,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          gapW16,
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.textLight,
            ),
          ),
        ],
      ),
    );
  }
}
