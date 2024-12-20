import 'package:flutter/material.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/screens/home/sections/service_section/widget/choose_button.dart';
import 'package:ui/widgets/custom_text.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.service});

  final ServiceList service;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsApp.OUTLINECOLOR,
      elevation: 1,
      child: Container(
        width: 512,
        height: 497,
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: ColorsApp.OUTLINECOLOR),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                text: ' service.name'.toUpperCase(),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: ColorsApp.TextColor),
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                  text: service.discount.toString(),
                  fontSize: 18,
                  color: ColorsApp.TextColorFeatures),
            ),
            const SizedBox(height: 30),
            CustomText(
                text: service.description ?? 'Not Available Description',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: ColorsApp.TextColorFeatures),
            const Spacer(),
            SizedBox(
              width: 412,
              height: 135,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomText(
                          text: service.price.toString(),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: ColorsApp.TextColor),
                      CustomText(
                          text: " / ${service.validFor}",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorsApp.TextColor),
                    ],
                  ),
                  const Spacer(),
                  const ChooseButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
