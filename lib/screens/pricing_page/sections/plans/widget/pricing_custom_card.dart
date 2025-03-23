import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/shared/custom_text.dart';

class PricingCustomCard extends StatelessWidget {
  const PricingCustomCard({
    super.key,
    required this.service,
    required this.isSelected,
  });

  final ServiceList service;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected ? ColorsApp.MAINCOLOR : ColorsApp.OUTLINECOLOR,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: service.name,
                fontWeight: FontWeight.bold,
                fontSize: getResponsiveFontSize(context, fontSize: 13),
                color: isSelected
                    ? ColorsApp.ColorCardFeature
                    : ColorsApp.TextColorFeatures,
              ),
              const SizedBox(height: 15),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(
                  text: service.description,
                  fontWeight: FontWeight.bold,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  color: isSelected
                      ? ColorsApp.ColorCardFeature
                      : ColorsApp.TextColorFeatures,
                ),
              ),
              const SizedBox(height: 15),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(
                  text: service.description,
                  fontWeight: FontWeight.w500,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  color: isSelected
                      ? ColorsApp.ColorCardFeature
                      : ColorsApp.TextColorFeatures,
                ),
              ),
              const SizedBox(height: 15),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(
                  text: service.description,
                  fontWeight: FontWeight.w500,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  color: isSelected
                      ? ColorsApp.ColorCardFeature
                      : ColorsApp.TextColorFeatures,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(
                  text: service.description,
                  fontWeight: FontWeight.w500,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  color: isSelected
                      ? ColorsApp.ColorCardFeature
                      : ColorsApp.TextColorFeatures,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(
                  text: service.description.toString(),
                  fontWeight: FontWeight.w500,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  color:
                      isSelected ? Colors.white : ColorsApp.TextColorFeatures,
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: CustomText(
                  text: service.description,
                  fontWeight: FontWeight.w500,
                  fontSize: getResponsiveFontSize(context, fontSize: 13),
                  color: isSelected
                      ? ColorsApp.ColorCardFeature
                      : ColorsApp.TextColorFeatures,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: service.description,
                    fontSize: getResponsiveFontSize(context, fontSize: 13),
                    color: isSelected
                        ? ColorsApp.TitleColorFeatures
                        : ColorsApp.ColorCardFeature,
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  CustomText(
                    text: "\$${service.price}",
                    fontWeight: FontWeight.bold,
                    fontSize: getResponsiveFontSize(context, fontSize: 30),
                    color: isSelected
                        ? ColorsApp.ColorCardFeature
                        : ColorsApp.TextColorFeatures,
                  ),
                  CustomText(
                    text: " /month",
                    fontWeight: FontWeight.w400,
                    fontSize: getResponsiveFontSize(context, fontSize: 13),
                    color: isSelected
                        ? ColorsApp.ColorCardFeature
                        : ColorsApp.TextColorFeatures,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(8.0), // Adjust as needed
                  ),
                  color: ColorsApp.SecondaryColor,
                  onPressed: () {},
                  child: Text(
                    'Choose Plan',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: getResponsiveFontSize(context, fontSize: 13),
                      color: isSelected
                          ? ColorsApp.MAINCOLOR
                          : ColorsApp.TextColorFeatures,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
