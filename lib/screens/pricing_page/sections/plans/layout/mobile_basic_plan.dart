import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_cubit.dart';
import 'package:ui/cubits/service_cubit/service_cubit/service_state.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/screens/pricing_page/sections/plans/widget/pricing_custom_card.dart';

class MobileListPricing extends StatelessWidget {
  const MobileListPricing({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ServiceCubit>().loadServices();

    return BlocBuilder<ServiceCubit, ServiceState>(
      builder: (context, state) {
        if (state is ServiceLoading || state is ServiceInitial) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ServiceSuccess) {
          if (state.service.isEmpty) {
            return const Center(child: Text('No services available.'));
          }
          return _buildServiceList(state.service, context);
        } else if (state is ServiceNoData) {
          return const Center(child: Text('No services found.'));
        } else if (state is ServiceFailure) {
          return const Center(child: Text('Error loading services.'));
        }
        return const SizedBox.shrink();
      },
    );
  }

  Widget _buildServiceList(List<ServiceList> services, BuildContext context) {
    return SizedBox(
      // width: 400,
      // height: MediaQuery.of(context).size.height * 3.2,
      child: CustomScrollView(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: PricingCustomCard(
                    isSelected: index == 1,
                    service: services[index],
                  ),
                ),
                childCount: services.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
