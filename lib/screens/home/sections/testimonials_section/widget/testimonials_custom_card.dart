import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/cubits/testimonils_cubit/testimonils_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:ui/widgets/custom_text.dart';

class TestmonialsCustomCard extends StatelessWidget {
  const TestmonialsCustomCard({
    super.key,
    required this.testimonial,
  });

  final TestimonialBase testimonial;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestimonilsCubit()
        ..getAllTestimonial(), // Fetch testimonials on widget load
      child: BlocBuilder<TestimonilsCubit, TestimonilsState>(
        builder: (context, state) {
          if (state is TestimonilsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TestimonilsSuccess) {
            final testimonials = state.testimonials;

            return SizedBox(
              width: ScreenSize.isLarge
                  ? 450
                  : ScreenSize.isMedium
                      ? 350
                      : 300,
              height: ScreenSize.isLarge
                  ? 300
                  : ScreenSize.isMedium
                      ? 180
                      : 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.imagesIconComment,
                    height: 40,
                    width: 40,
                  ),
                  const SizedBox(height: 20),
                  CustomText(
                    text: testimonial.title,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorsApp.TextColor,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 90,
                    width: 413,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: ColorsApp.OUTLINECOLOR,
                        borderRadius: BorderRadius.circular(2)),
                    child: Row(
                      children: [
                        Card(
                          color: ColorsApp.AppBarColor,
                          child: Image.asset(
                            "assets/images/cardsmail2.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        const SizedBox(width: 10),
                        CustomText(
                          text: testimonial.description,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: ColorsApp.MAINCOLOR,
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          } else if (state is TestimonilFailur) {
            return Center(
              child: Text(state.errMessage),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
