import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_cubit.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_state.dart';
import 'package:ui/screens/pricing_page/sections/plans/widget/pricing_custom_card.dart';

class TabletListPricing extends StatelessWidget {
  const TabletListPricing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final List basicPlan = BasicPlan.basicPlans;
    return BlocBuilder<ServiceCubit, ServiceState>(builder: (context, state) {
      if (state is ServiceLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is ServiceSuccess) {
        if (state.service.isEmpty) {
          return const Center(
              child: Text('No services available at the moment.'));
        }
        final services = state.service;
        return SizedBox(
          width: 1200,
          height: 600,
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            physics: const NeverScrollableScrollPhysics(),
            itemCount: services.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
              mainAxisExtent: 620,
            ),
            itemBuilder: (BuildContext context, int index) {
              return PricingCustomCard(
                isSelected: index == 1,
                service: services[index],
              );
            },
          ),
        );
      }
      return const Center(child: Text('Error loading services.'));
    });
  }
}
