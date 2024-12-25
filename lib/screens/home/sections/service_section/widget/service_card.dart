import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/Constants/constants.dart';
import 'package:ui/cubits/service_cubit/service_cubit.dart';
import 'package:ui/cubits/service_cubit/service_state.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/screens/home/sections/service_section/widget/choose_button.dart';
import 'package:ui/widgets/custom_text.dart';

class ServiceCard extends StatelessWidget {
  final ServiceList service;

  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceCubit, ServiceState>(
      builder: (context, state) {
        if (state is ServiceLoading) {
          return const CircularProgressIndicator();
        } else if (state is ServiceLoading) {
          return Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CustomText(
                  text: service.discount.toString(),
                  fontSize: 18,
                  color: ColorsApp.TextColorFeatures,
                ),
              ),
              const SizedBox(height: 30),
              CustomText(
                text: service.description,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: ColorsApp.TextColorFeatures,
              ),
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
                          color: ColorsApp.TextColor,
                        ),
                        CustomText(
                          text: " / ${service.validFor}",
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: ColorsApp.TextColor,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const ChooseButton(),
                  ],
                ),
              ),
            ],
          );
        } else if (state is ServiceFailure) {
          return Text('Error: ${state.noDataMessage}');
        } else {
          return const Text('Unknown state');
        }
      },
    );
  }
}
