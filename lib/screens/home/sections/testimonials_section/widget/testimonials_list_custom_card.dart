import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/testimonils/testimonils_cubit/testimonils_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'testimonials_custom_card.dart';

class TestimonialsListCustomCard extends StatelessWidget {
  const TestimonialsListCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLarge = ScreenSize.isLarge; // Example threshold for large screens
    final isMedium = ScreenSize.isMedium;

    return BlocProvider(
      create: (context) => TestimonilsCubit()..getAllTestimonial(),
      child: BlocBuilder<TestimonilsCubit, TestimonilsState>(
        builder: (context, state) {
          if (state is TestimonilsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TestimonilsSuccess) {
            return isLarge || isMedium
                ? GridView.builder(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.19),
                    itemCount: state.testimonials.length,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: isLarge ? 3 : 2,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final testimonial = state.testimonials[index];
                      return TestimonialsCustomCard(testimonial: testimonial);
                    },
                  )
                : ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: screenWidth),
                    itemCount: state.testimonials.length,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final testimonial = state.testimonials[index];
                      return TestimonialsCustomCard(testimonial: testimonial);
                    },
                  );
          } else if (state is TestimonilFailur) {
            return Center(
              child: Text('Failed to load testimonials: ${state.errMessage}'),
            );
          } else {
            return const Center(child: Text('No testimonials available.'));
          }
        },
      ),
    );
  }
}
