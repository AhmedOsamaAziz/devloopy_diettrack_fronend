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

          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ScreenSize.isLarge || ScreenSize.isMedium
                ? SizedBox(
                    width: 1500,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(8.0),
                      itemCount: services.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
                              service: services[index], isSelected: index == 1),
                        );
                      },
                    ),
                  )
                : SingleChildScrollView(
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.all(8.0),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, //
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 0.73,
                              ),
                              itemCount: services.length,
                              itemBuilder: (context, index) {
                                return ServiceCardMobile(
                                  service: services[index],
                                  isSelected: index == 1,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
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
