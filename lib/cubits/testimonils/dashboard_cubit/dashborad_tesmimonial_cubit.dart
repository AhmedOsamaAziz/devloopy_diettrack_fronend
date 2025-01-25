// import 'dart:convert';
// import 'dart:developer';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/testimonials/testimonial_create.dart';
// import 'package:ui/model/testimonials/testimonial_list.dart';
// import 'package:ui/model/testimonials/testimonial_update.dart';
// import 'package:ui/services/testimonial_service/testimonial_service.dart';

// class TestimonialCubit extends Cubit<TestimonialState> {
//   final TestimonialService _testimonialService = TestimonialService();

//   TestimonialCubit() : super(TestimonialInitial());

//   Future<void> loadTestimonials() async {
//     emit(TestimonialLoading());
//     try {
//       // Load from SharedPreferences
//       final prefs = await SharedPreferences.getInstance();
//       final String? testimonialJson = prefs.getString('testimonials');
//       List<TestimonialList> testimonials = [];
//       if (testimonialJson != null) {
//         final List<dynamic> testimonialList = jsonDecode(testimonialJson);
//         testimonials = testimonialList
//             .map((testimonial) => TestimonialList.fromJson(testimonial))
//             .toList();
//       }

//       // Fetch from API
//       final response = await _testimonialService.getAllTestimonial(
//           limit: const int.fromEnvironment('limit'), page: 1);
//       if (response.status == ResponseStatus.success) {
//         testimonials = response.obj;
//         _saveTestimonialsToSharedPref(testimonials);
//       } else {
//         // Fallback to SharedPreferences data if API call fails
//         if (testimonials.isNotEmpty) {
//           emit(TestimonialLoaded(testimonials));
//           return;
//         }
//         emit(TestimonialError(
//             'Failed to load testimonials: ${response.message}',
//             testimonials: testimonials));
//         return;
//       }

//       emit(TestimonialLoaded(testimonials));
//     } catch (e) {
//       emit(TestimonialError(
//           'Network error: Please check your internet connection.',
//           testimonials: state.testimonials));
//     }
//   }

//   Future<void> addOrUpdateTestimonial(TestimonialList testimonial,
//       {int? index}) async {
//     emit(TestimonialLoading());
//     try {
//       final testimonialUpdate = TestimonialUpdate(
//         id: testimonial.id,
//         title: testimonial.title,
//         description: testimonial.description,
//         videoUrl: testimonial.videoUrl,
//       );

//       final response =
//           await _testimonialService.updateTestimonial(testimonialUpdate);
//       if (response.status == ResponseStatus.success) {
//         final List<TestimonialList> updatedTestimonials =
//             List.from(state.testimonials);
//         if (index != null) {
//           updatedTestimonials[index] = testimonial;
//         } else {
//           updatedTestimonials.add(testimonial);
//         }
//         _saveTestimonialsToSharedPref(updatedTestimonials);
//         emit(TestimonialLoaded(updatedTestimonials));
//       } else {
//         emit(TestimonialError(
//             'Failed to update testimonial: ${response.message}',
//             testimonials: state.testimonials));
//       }
//     } catch (e) {
//       emit(TestimonialError(
//           'Network error: Please check your internet connection.',
//           testimonials: state.testimonials));
//     }
//   }

//   Future<void> deleteTestimonial(int index) async {
//     emit(TestimonialLoading());
//     try {
//       final testimonial = state.testimonials[index];
//       final response = await _testimonialService.deleteTestimonial(
//         TestimonialCreate(
//           id: testimonial.id,
//           title: testimonial.title,
//           description: testimonial.description,
//           videoUrl: testimonial.videoUrl,
//         ),
//       );

//       if (response.status == ResponseStatus.success) {
//         final List<TestimonialList> updatedTestimonials =
//             List.from(state.testimonials);
//         updatedTestimonials.removeAt(index);
//         _saveTestimonialsToSharedPref(updatedTestimonials);
//         emit(TestimonialLoaded(updatedTestimonials));
//       } else {
//         emit(TestimonialError(
//             'Failed to delete testimonial: ${response.message}',
//             testimonials: state.testimonials));
//       }
//     } catch (e) {
//       emit(TestimonialError(
//           'Network error: Please check your internet connection.',
//           testimonials: state.testimonials));
//     }
//   }

//   Future<void> _saveTestimonialsToSharedPref(
//       List<TestimonialList> testimonials) async {
//     try {
//       final prefs = await SharedPreferences.getInstance();
//       final List<Map<String, dynamic>> testimonialList =
//           testimonials.map((testimonial) => testimonial.toJson()).toList();
//       await prefs.setString('testimonials', jsonEncode(testimonialList));
//     } catch (e) {
//       log('Failed to save testimonials to SharedPreferences: $e');
//     }
//   }
// }

// abstract class TestimonialState {
//   List<TestimonialList> get testimonials => [];
// }

// class TestimonialInitial extends TestimonialState {}

// class TestimonialLoading extends TestimonialState {}

// class TestimonialLoaded extends TestimonialState {
//   @override
//   final List<TestimonialList> testimonials;

//   TestimonialLoaded(this.testimonials);
// }

// class TestimonialError extends TestimonialState {
//   final String message;
//   @override
//   final List<TestimonialList> testimonials;

//   TestimonialError(this.message, {this.testimonials = const []});
// }
