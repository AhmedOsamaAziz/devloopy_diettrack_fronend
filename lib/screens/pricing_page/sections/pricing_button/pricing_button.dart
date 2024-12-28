import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/cubits/service_cubit/button_cubit/button_color_cubit.dart';
import 'package:ui/helper/font_size_responsive.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/widgets/custom_text.dart';

class PricingButton extends StatelessWidget {
  const PricingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PricingButtonCubit(), // Provide the cubit
      child: BlocBuilder<PricingButtonCubit, ButtonType>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 99,
                    height: ScreenSize.isLarge ? 47 : 35,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      color: state == ButtonType.monthly
                          ? ColorsApp.MAINCOLOR
                          : ColorsApp.OUTLINECOLOR,
                      onPressed: () {
                        context
                            .read<PricingButtonCubit>()
                            .selectMonthly(); // Change state to "Monthly"
                      },
                      child: Text(
                        'Monthly',
                        style: TextStyle(
                          color: state == ButtonType.monthly
                              ? Colors.white
                              : Colors.black, // White text for active
                          fontSize:
                              getResponsiveFontSize(context, fontSize: 14),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 99,
                    height: ScreenSize.isLarge ? 47 : 35,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      color: state == ButtonType.yearly
                          ? ColorsApp.MAINCOLOR
                          : ColorsApp.OUTLINECOLOR,
                      onPressed: () {
                        context
                            .read<PricingButtonCubit>()
                            .selectYearly(); // Change state to "Yearly"
                      },
                      child: CustomText(
                        text: 'Yearly',
                        fontSize: getResponsiveFontSize(context, fontSize: 16),
                        fontWeight: FontWeight.w400,
                        color: state == ButtonType.yearly
                            ? Colors.white
                            : Colors.black, // White text for active
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomText(
                text: 'Save 50% on Yearly',
                fontSize: getResponsiveFontSize(context, fontSize: 16),
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ],
          );
        },
      ),
    );
  }
}
