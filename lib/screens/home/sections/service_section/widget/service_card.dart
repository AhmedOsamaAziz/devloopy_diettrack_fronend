import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/screens/home/sections/service_section/widget/choose_button.dart';
import 'package:ui/widgets/custom_text.dart';

class ServiceCard extends StatelessWidget {
  final ServiceList service;
  final bool isSelected; // To track whether the card is selected

  const ServiceCard({
    super.key,
    required this.service,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isSelected ? ColorsApp.MAINCOLOR : ColorsApp.OUTLINECOLOR,
        borderRadius: BorderRadius.circular(20),
      ),
      child: isSelected
          ? Banner(
              color: ColorsApp.NumberColor,
              location: BannerLocation.topEnd,
              message: 'The Best',
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                      text: service.name,
                      fontSize: getResponsiveFontSize(context, fontSize: 13),
                      color: isSelected ? Colors.white : ColorsApp.TextColorFeatures,
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomText(
                    text: service.description,
                    fontWeight: FontWeight.w600,
                    fontSize: getResponsiveFontSize(context, fontSize: 13),
                    color: isSelected ? Colors.white : ColorsApp.TextColorFeatures,
                  ),
                  SizedBox(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomText(
                              text: service.price.toString(),
                              fontSize: getResponsiveFontSize(context, fontSize: 30),
                              fontWeight: FontWeight.bold,
                              color: isSelected ? ColorsApp.NumberColor : ColorsApp.TextColor,
                            ),
                            CustomText(
                              text: " / ${service.validFor}",
                              fontWeight: FontWeight.w400,
                              fontSize: getResponsiveFontSize(context, fontSize: 16),
                              color: isSelected ? Colors.white : ColorsApp.TextColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  const ChooseButton(),
                ],
              ),
            )
          : Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: CustomText(
                    text: service.name,
                    fontSize: getResponsiveFontSize(context, fontSize: 13),
                    color: isSelected ? Colors.white : ColorsApp.TextColorFeatures,
                  ),
                ),
                const SizedBox(height: 30),
                CustomText(
                  text: service.description,
                  fontWeight: FontWeight.w600,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  color: isSelected ? Colors.white : ColorsApp.TextColorFeatures,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            text: service.price.toString(),
                            fontSize: getResponsiveFontSize(context, fontSize: 30),
                            fontWeight: FontWeight.bold,
                            color: isSelected ? ColorsApp.NumberColor : ColorsApp.TextColor,
                          ),
                          CustomText(
                            text: " / ${service.validFor}",
                            fontWeight: FontWeight.w400,
                            fontSize: getResponsiveFontSize(context, fontSize: 16),
                            color: isSelected ? Colors.white : ColorsApp.TextColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                const ChooseButton(),
              ],
            ),
    );
  }
}
