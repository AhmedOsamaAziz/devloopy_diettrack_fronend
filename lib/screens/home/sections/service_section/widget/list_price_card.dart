import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/service_cubit/service_cubit.dart';
import 'package:ui/cubits/service_cubit/service_state.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/screens/home/sections/service_section/widget/service_card.dart';

class ListPriceCard extends StatelessWidget {
  const ListPriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ServiceCubit>().loadServices();
    return BlocBuilder<ServiceCubit, ServiceState>(
      builder: (context, state) {
        if (state is ServiceLoading) {
          print('loading');
          return const Center(child: CircularProgressIndicator());
        } else if (state is ServiceSuccess) {
          print('success');

          return ScreenSize.isLarge || ScreenSize.isMedium
              ? Expanded(
                  child: GridView.builder(
                    itemCount: state.service.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 50,
                      mainAxisExtent: 500,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return ServiceCard(
                        service: state.service[index],
                      );
                    },
                  ),
                )
              : Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          sliver: SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return ServiceCard(
                                  service: state.service[index],
                                );
                              },
                              childCount: state.service.length,
                            ),
                          ))
                    ],
                  ),
                );
        } else if (state is ServiceFailure) {
          print('fffffffffffffffffffffffff');

          return Center(child: Text(state.noDataMessage as String));
        } else {
          print('vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv');

          return const Center(child: Text('No services available.try again'));
        }
      },
    );
  }
}
