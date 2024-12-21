// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui/core/assets.dart';
// import 'package:ui/cubits/testimonils_cubit/testimonils_cubit.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/screens/home/sections/testimonials_section/widget/testimonials_custom_card.dart';
// import 'package:ui/widgets/custom_text.dart';
// import 'package:ui/Constants/constants.dart';

// class TestimonialsCustomCard extends StatelessWidget {
//   const TestimonialsCustomCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => TestimonilsCubit()..getAllTestimonial(),
//       child: BlocBuilder<TestimonilsCubit, TestimonilsState>(
//         builder: (context, state) {
//           if (state is TestimonilsLoading) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is TestimonilsSuccess) {
//             final testimonials = state.testimonials;

//             return ListView.builder(
//               scrollDirection: Axis.vertical,
//               itemCount: testimonials.length,
//               itemBuilder: (context, index) {
//                 final testimonial = testimonials[index];
//                 return SizedBox(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset(
//                         Assets.imagesIconComment,
//                         height: 40,
//                         width: 40,
//                       ),
//                       const SizedBox(height: 20),
//                       CustomText(
//                         text: testimonial.title,
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: ColorsApp.TextColor,
//                       ),
//                       const SizedBox(height: 10),
//                       CustomText(
//                         text: testimonial.description,
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                         color: ColorsApp.TextColor,
//                       ),
//                       const SizedBox(height: 20),
//                       GestureDetector(
//                         onTap: () async {
//                           final url = testimonial.videoUrl;
//                           if (await canLaunch(url)) {
//                             await launch(url);
//                           } else {
//                             throw 'Could not launch $url';
//                           }
//                         },
//                         child: Container(
//                           height: 200,
//                           color: Colors.black12,
//                           child: Center(
//                             child: Icon(
//                               Icons.play_circle_fill,
//                               color: ColorsApp.MAINCOLOR,
//                               size: 50,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 );
//               },
//             );
//           } else if (state is TestimonilFailur) {
//             return Center(child: Text(state.errMessage));
//           } else {
//             return const Center(child: Text('Unknown state'));
//           }
//         },
//       ),
//     );
//   }
// }

//===================================

// import 'package:flutter/material.dart';
// import 'package:ui/core/assets.dart';
// import 'package:ui/model/testimonials/testimonial_base.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:ui/widgets/custom_text.dart';
// import 'package:ui/Constants/constants.dart';

// class TestimonialsCustomCard extends StatelessWidget {
//   final TestimonialBase testimonial;
//   Future<void> _launchUrl() async {
//     final url = testimonial.videoUrl;
//     final uri = Uri.parse(url);
//     if (await canLaunchUrl(uri)) {
//       await launchUrl(uri);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }

//   const TestimonialsCustomCard({super.key, required this.testimonial});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.asset(
//             Assets.imagesIconComment,
//             height: 40,
//             width: 40,
//           ),
//           const SizedBox(height: 20),
//           CustomText(
//             text: testimonial.title,
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//             color: ColorsApp.TextColor,
//           ),
//           const SizedBox(height: 10),
//           CustomText(
//             text: testimonial.description,
//             fontSize: 12,
//             fontWeight: FontWeight.w400,
//             color: ColorsApp.TextColor,
//           ),
//           const SizedBox(height: 20),
//           GestureDetector(
//             onTap: () async {
//               await _launchUrl();
//             },
//             child: Stack(
//               alignment: Alignment.center,
//               children: [
//                 Container(
//                   height: 200,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: NetworkImage(testimonial
//                           .videoUrl), // Replace with your thumbnail URL
//                       fit: BoxFit.cover,
//                       onError: (error, stackTrace) =>
//                           Image.asset(Assets.imagesMap, fit: BoxFit.cover),
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 200,
//                   color: ColorsApp.AppBarColor.withOpacity(0.5),
//                   child: const Center(
//                     child: Icon(
//                       Icons.play_circle_fill,
//                       color: ColorsApp.MAINCOLOR,
//                       size: 50,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:ui/core/assets.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ui/widgets/custom_text.dart';
import 'package:ui/Constants/constants.dart';

class TestimonialsCustomCard extends StatelessWidget {
  final TestimonialBase testimonial;

  const TestimonialsCustomCard({super.key, required this.testimonial});

  Future<void> _launchUrl() async {
    final url = testimonial.videoUrl;
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
        const SizedBox(height: 10),
        CustomText(
          text: testimonial.description,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorsApp.TextColor,
        ),
        const SizedBox(height: 20),
        GestureDetector(
          onTap: () async {
            await _launchUrl();
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(testimonial
                        .videoUrl), // Replace with your thumbnail URL
                    fit: BoxFit.cover,
                    onError: (error, stackTrace) =>
                        Image.asset(Assets.imagesMap, fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                height: 200,
                color: Colors.black12
                    .withValues(alpha: 0.9), // Add a semi-transparent overlay
                child: const Center(
                  child: Icon(
                    Icons.play_circle_fill,
                    color: ColorsApp.MAINCOLOR,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
