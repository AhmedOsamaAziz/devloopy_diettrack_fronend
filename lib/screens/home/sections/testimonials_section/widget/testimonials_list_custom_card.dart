import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/testimonils_cubit/testimonils_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/general/our_testmonials.dart';
import 'testimonials_custom_card.dart'; // Import TestmonialsCustomCard

class TestmonialsListCustomCard extends StatelessWidget {
  const TestmonialsListCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestimonilsCubit()..detailsTestimonial(),
      child: BlocBuilder<TestimonilsCubit, TestimonilsState>(
        builder: (context, state) {
          if (state is TestimonilsLoading) {
            // Show a loading indicator while the testimonials are being fetched
            return const Center(child: CircularProgressIndicator());
          } else if (state is TestimonilsSuccess) {
            final List<OurTestimonalsModel> list = state.testimonials
                .map((testimonial) => OurTestimonalsModel.fromTestimonialBase(
                    testimonial as Map<String, dynamic>))
                .toList();

            // Adjust for large or medium screens
            return ScreenSize.isLarge || ScreenSize.isMedium
                ? Expanded(
                    child: GridView.builder(
                      itemCount: list.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return TestmonialsCustomCard(
                          ourTestimonalsModel: list[index],
                        );
                      },
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: list.length,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return TestmonialsCustomCard(
                          ourTestimonalsModel: list[index],
                        );
                      },
                    ),
                  );
          } else if (state is TestimonilFailur) {
            // Display an error message if the testimonials failed to load
            return Center(
              child: Text('Failed to load testimonials: ${state.errMessage}'),
            );
          } else {
            // Handle any other states, including the initial state
            return const Center(child: Text('No testimonials available.'));
          }
        },
      ),
    );
  }
}
