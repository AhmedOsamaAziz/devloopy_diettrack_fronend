import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/screens/home/sections/service_section/widget/choose_button.dart';
import 'package:ui/widgets/custom_text.dart';

class ServiceCardMobile extends StatelessWidget {
  final ServiceList service;
  final bool isSelected;

  const ServiceCardMobile({
    super.key,
    required this.service,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Card(
          elevation: 10,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isSelected ? ColorsApp.MAINCOLOR : ColorsApp.OUTLINECOLOR,
              borderRadius: BorderRadius.circular(20),
            ),
            child: SingleChildScrollView(
              child: isSelected
                  ? Banner(
                      color: ColorsApp.NumberColor,
                      location: BannerLocation.topEnd,
                      message: 'The Best',
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: service.name,
                            fontSize:
                                getResponsiveFontSize(context, fontSize: 16),
                            color: isSelected
                                ? Colors.white
                                : ColorsApp.TextColorFeatures,
                          ),
                          const SizedBox(height: 10),
                          RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              text: service.description.split(';').first,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 20),
                                color: isSelected
                                    ? Colors.white
                                    : ColorsApp.TextColorFeatures,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      '\n${service.description.split(';').last}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: getResponsiveFontSize(context,
                                        fontSize: 20),
                                    color: isSelected
                                        ? Colors.white
                                        : ColorsApp.TextColorFeatures,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              CustomText(
                                text: "\$${service.price}",
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 30),
                                fontWeight: FontWeight.bold,
                                color: isSelected
                                    ? ColorsApp.NumberColor
                                    : ColorsApp.TextColor,
                              ),
                              CustomText(
                                text: " / ${service.validFor}",
                                fontWeight: FontWeight.w400,
                                fontSize: getResponsiveFontSize(context,
                                    fontSize: 16),
                                color: isSelected
                                    ? Colors.white
                                    : ColorsApp.TextColor,
                              ),
                            ],
                          ),
                          const ChooseButton(),
                        ],
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: service.name,
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 16),
                          color: isSelected
                              ? Colors.white
                              : ColorsApp.TextColorFeatures,
                        ),
                        const SizedBox(height: 10),
                        RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            text: service.description.split(';').first,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 20),
                              color: isSelected
                                  ? Colors.white
                                  : ColorsApp.TextColorFeatures,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    '\n${service.description.split(';').last}',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: getResponsiveFontSize(context,
                                      fontSize: 20),
                                  color: isSelected
                                      ? Colors.white
                                      : ColorsApp.TextColorFeatures,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            CustomText(
                              text: "\$${service.price}",
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 30),
                              fontWeight: FontWeight.bold,
                              color: isSelected
                                  ? ColorsApp.NumberColor
                                  : ColorsApp.TextColor,
                            ),
                            CustomText(
                              text: "/ ${service.validFor}",
                              fontWeight: FontWeight.w400,
                              fontSize:
                                  getResponsiveFontSize(context, fontSize: 16),
                              color: isSelected
                                  ? Colors.white
                                  : ColorsApp.TextColor,
                            ),
                          ],
                        ),
                        const ChooseButton(),
                      ],
                    ),
            ),
          ),
        );
      },
    );
  }
}
