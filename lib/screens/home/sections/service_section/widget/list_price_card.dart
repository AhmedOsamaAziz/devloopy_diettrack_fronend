 

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_cubit.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_state.dart';
import 'package:ui/helper/screen_size.dart'; // Import ScreenSize
import 'package:ui/screens/home/sections/service_section/widget/service_card.dart';
import 'package:ui/screens/home/sections/service_section/widget/service_card_mobile.dart';

class ListPriceCard extends StatelessWidget {
  const ListPriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ServiceCubit>().loadServices();
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

           if (ScreenSize.isLarge || ScreenSize.isMedium) {
            return SizedBox(
              width: 1500,
               child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(8.0),
                itemCount: services.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.8,
                  mainAxisExtent: 400,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(8.0),
                    child: ServiceCard(
                      service: services[index],
                      isSelected: index == 1,
                    ),
                  );
                },
              ),
            );
          }
          // للشاشات الصغيرة (الموبايل)
          else {
            return Center(
              child: SizedBox(
                width: 360,
                 child: RepaintBoundary(
                   child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: services.length,
                    itemBuilder: (context, index) {
                       return Padding(
                        padding: index == services.length - 1
                            ? const EdgeInsets.only(top: 16.0, bottom: 16.0)
                            : const EdgeInsets.symmetric(vertical: 16.0),
                        child: ServiceCardMobile(
                          service: services[index],
                          isSelected: index == 1,
                        ),
                      );
                    },
                                   ),
                 ),
              ),
            );
          }
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
