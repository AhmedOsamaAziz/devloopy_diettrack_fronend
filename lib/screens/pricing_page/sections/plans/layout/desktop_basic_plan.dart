import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_cubit.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_state.dart';
import 'package:ui/model/general/basic_plan.dart';
import 'package:ui/screens/pricing_page/sections/plans/widget/pricing_custom_card.dart';

class DesktopListPricing extends StatelessWidget {
  const DesktopListPricing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final List basicPlan = BasicPlan.basicPlans;
    return BlocBuilder<ServiceCubit, ServiceState>(
      builder: (context, state) {
        if (state is ServiceLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ServiceSuccess) {
          if (state.service.isEmpty) {
            return const Center(
                child: Text('No services available at the moment.'));
          }

          final services = state.service;
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30),
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
        } else if (state is ServiceFailure) {
          return const Center(
              child: Text('Failed to load services. Please try again.'));
        } else if (state is ServiceNoData) {
          return const Center(child: Text('No services available.'));
        } else {
          return const Center(child: Text('Unknown state'));
        }
      },
    );
  }
}
