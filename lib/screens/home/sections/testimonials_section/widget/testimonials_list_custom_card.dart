import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/constants/constants.dart';
import 'package:ui/cubits/testimonils/testimonils_cubit/testimonils_cubit.dart';
import 'package:ui/helper/screen_size.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_custom_card.dart';
import 'package:ui/widgets/custom_text.dart';

class TestimonialsListCustomCard extends StatefulWidget {
  const TestimonialsListCustomCard({super.key});

  @override
  _TestimonialsListCustomCardState createState() =>
      _TestimonialsListCustomCardState();
}

class _TestimonialsListCustomCardState
    extends State<TestimonialsListCustomCard> {
  int currentPage = 0;
  final int itemsPerPage = ScreenSize.isLarge || ScreenSize.isMedium ? 4 : 3;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestimonilsCubit()..getAllTestimonial(),
      child: BlocBuilder<TestimonilsCubit, TestimonilsState>(
        builder: (context, state) {
          if (state is TestimonilsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TestimonilsSuccess) {
            final List<TestimonialBase> testimonials = state.testimonials;

            if (testimonials.isEmpty) {
              return const Center(child: Text('No testimonials available.'));
            }

            final totalPages = (testimonials.length / itemsPerPage).ceil();
            final startIndex = currentPage * itemsPerPage;
            final endIndex =
                (startIndex + itemsPerPage).clamp(0, testimonials.length);

            final List<TestimonialBase> currentItems =
                (startIndex < testimonials.length)
                    ? testimonials.sublist(startIndex, endIndex)
                    : [];

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 500),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (currentItems.isNotEmpty)
                      SizedBox(
                        width: 1500,
                        height: 450,
                        child: ListView.builder(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenSize.isLarge ? 100 : 20,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: currentItems.length,
                          itemBuilder: (context, index) {
                            if (index >= currentItems.length) {
                              return const SizedBox.shrink();
                            }

                            try {
                              return TestimonialsCustomCard(
                                testimonial: currentItems[index],
                              );
                            } catch (e) {
                              return const Center(
                                  child: Text("Error loading testimonial"));
                            }
                          },
                        ),
                      )
                    else
                      const Center(child: Text('No testimonials available.')),
                    _customCountPagination(totalPages),
                  ],
                ),
              ),
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

  Row _customCountPagination(int totalPages) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: currentPage > 0
              ? () {
                  if (mounted) {
                    setState(() {
                      currentPage--;
                    });
                  }
                }
              : null,
          child: Card(
            child: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: const Color(0xffEEF8D3),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/arrow_left.png'))),
            ),
          ),
        ),
        CustomText(
            text: 'Page ${currentPage + 1} of $totalPages',
            color: ColorsApp.TextColor,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        GestureDetector(
          onTap: currentPage < totalPages - 1
              ? () {
                  if (mounted) {
                    setState(() {
                      currentPage++;
                    });
                  }
                }
              : null,
          child: Card(
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: const Color(0xffEEF8D3),
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/arrow_right.png'))),
            ),
          ),
        ),
      ],
    );
  }
}
