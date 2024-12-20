import 'package:flutter/material.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/model/general/basic_plan.dart';
import 'package:ui/widgets/custom_text.dart';

class PricingCustomCard extends StatelessWidget {
  const PricingCustomCard({
    super.key,
    required this.basicPlan,
  });

  final BasicPlan basicPlan;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: ColorsApp.OUTLINECOLOR),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                  text: basicPlan.title,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: ColorsApp.TextColor),
              const SizedBox(height: 15),
              CustomText(
                  text: basicPlan.subTitle,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorsApp.TextColorFeatures),
              const SizedBox(height: 15),
              CustomText(
                  text: basicPlan.paragrph,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsApp.TextColorFeatures),
              const SizedBox(height: 15),
              CustomText(
                  text: basicPlan.paragrph1,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsApp.TextColorFeatures),
              const SizedBox(height: 10),
              CustomText(
                  text: basicPlan.paragrph2,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsApp.TextColorFeatures),
              const SizedBox(height: 10),
              CustomText(
                  text: basicPlan.paragrph3.toString(),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsApp.TextColorFeatures),
              const SizedBox(height: 10),
              CustomText(
                  text: basicPlan.paragrph4 ?? '',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: ColorsApp.TextColorFeatures),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: basicPlan.color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                      text: basicPlan.paragrph5 ?? '',
                      fontSize: 15,
                      color: ColorsApp.OUTLINECOLOR),
                ),
              ),
              const SizedBox(height: 15),
              // const Spacer(),
              Row(
                children: [
                  CustomText(
                      text: basicPlan.amount,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: ColorsApp.TextColor),
                  CustomText(
                      text: " /month",
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: ColorsApp.TextColor),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 58,
                child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(3.0), // Adjust as needed
                    ),
                    color: ColorsApp.SecondaryColor,
                    onPressed: () {},
                    child: const Text(
                      'Choose Plan',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    )),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
