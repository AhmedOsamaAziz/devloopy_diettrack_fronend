import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/cubits/testimonils/testimonils_cubit/testimonils_cubit.dart';
import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_custom_card.dart';

class TestimonialsListCustomCard extends StatefulWidget {
  const TestimonialsListCustomCard({super.key});

  @override
  _TestimonialsListCustomCardState createState() =>
      _TestimonialsListCustomCardState();
}

class _TestimonialsListCustomCardState
    extends State<TestimonialsListCustomCard> {
  int currentPage = 0; // الصفحة الحالية
  final int itemsPerPage = 4; // عدد العناصر لكل صفحة

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TestimonilsCubit()..getAllTestimonial(),
      child: BlocBuilder<TestimonilsCubit, TestimonilsState>(
        builder: (context, state) {
          if (state is TestimonilsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TestimonilsSuccess) {
            final testimonials = state.testimonials;

            if (testimonials.isEmpty) {
              return const Center(child: Text('No testimonials available.'));
            }

            // تحديد بداية ونهاية العناصر للعرض
            final startIndex = currentPage * itemsPerPage;
            final endIndex =
                (startIndex + itemsPerPage).clamp(0, testimonials.length);
            final currentItems = testimonials.sublist(startIndex, endIndex);

            // إجمالي الصفحات
            final totalPages = (testimonials.length / itemsPerPage).ceil();

            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              height: 500, // Set a fixed height for the column
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
                      scrollDirection: Axis.horizontal,
                      itemCount: currentItems.length,
                      itemBuilder: (context, index) {
                        final testimonial = currentItems[index];
                        return TestimonialsCustomCard(testimonial: testimonial);
                      },
                    ),
                  ),
                  Row(
                    spacing: 16,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: currentPage > 0
                            ? () {
                                setState(() {
                                  currentPage--;
                                });
                              }
                            : null, // تعطيل الزر إذا كانت الصفحة الأولى
                        child: const Text('Previous'),
                      ),
                      Text(
                          'Page ${currentPage + 1} of $totalPages'), // عرض العداد
                      ElevatedButton(
                        onPressed: currentPage < totalPages - 1
                            ? () {
                                setState(() {
                                  currentPage++;
                                });
                              }
                            : null, // تعطيل الزر إذا كانت الصفحة الأخيرة
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                ],
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
}
