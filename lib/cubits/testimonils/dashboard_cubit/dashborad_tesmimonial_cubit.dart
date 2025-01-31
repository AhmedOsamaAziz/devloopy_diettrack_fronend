// import 'package:bloc/bloc.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/testimonials/testimonial_create.dart';
// import 'package:ui/model/testimonials/testimonial_list.dart';
// import 'package:ui/model/testimonials/testimonial_update.dart';
// import 'package:ui/services/testimonial_service/testimonial_service.dart';

// import 'dashborad_tesmimonial_state.dart';

// class DashboardTestimonialCubit extends Cubit<TestimonialDashboardState> {
//   final TestimonialService _testimonialService;

//   DashboardTestimonialCubit(this._testimonialService)
//       : super(TestimonialInitial());

//   Future<void> loadTestimonials() async {
//     emit(TestimonialLoading());
//     try {
//       print("Loading testimonials...");
//       final response =
//           await _testimonialService.getAllTestimonial(limit: 10, page: 1);

//       print("Response status: ${response.status}");
//       print(
//           "Response object: ${response.obj.map((e) => e.toString()).join(', ')}");

//       if (response.status == ResponseStatus.success) {
//         if (response.obj != null && response.obj.isNotEmpty) {
//           print("Testimonials loaded: ${response.obj}");
//           emit(TestimonialLoaded(response.obj));
//         } else {
//           print("No testimonials found.");
//           emit(TestimonialError("No testimonials available"));
//         }
//       } else {
//         print("Error: ${response.message}");
//         emit(TestimonialError(
//             response.message ?? "Failed to load testimonials"));
//       }
//     } catch (e) {
//       print("Error loading testimonials: $e");
//       emit(TestimonialError("Error loading testimonials"));
//     }
//   }

//   Future<void> addTestimonial(TestimonialList testimonial) async {
//     try {
//       final response = await _testimonialService
//           .createTestimonial(testimonial as TestimonialCreate);
//       if (response.status == ResponseStatus.success) {
//         emit(TestimonialAdded(response.obj));
//       } else {
//         emit(TestimonialError("Failed to add testimonial"));
//       }
//     } catch (e) {
//       emit(TestimonialError("Error adding testimonial"));
//     }
//   }

//   Future<void> updateTestimonial(TestimonialList testimonial) async {
//     try {
//       TestimonialUpdate testimonialUpdate = TestimonialUpdate(
//         id: testimonial.id.toString(),
//         title: testimonial.title,
//         description: testimonial.description,
//         videoUrl: testimonial.videoUrl,
//       );

//       final response =
//           await _testimonialService.updateTestimonial(testimonialUpdate);

//       if (response.status == ResponseStatus.success) {
//         emit(TestimonialUpdated(response.obj));
//       } else {
//         emit(TestimonialError("Failed to update testimonial"));
//       }
//     } catch (e) {
//       emit(TestimonialError("Error updating testimonial"));
//     }
//   }

//   Future<void> deleteTestimonial(String testimonialId) async {
//     try {
//       final response = await _testimonialService
//           .deleteTestimonial(testimonialId as TestimonialCreate?);
//       if (response.status == ResponseStatus.success) {
//         emit(TestimonialDeleted(testimonialId));
//       } else {
//         emit(TestimonialError("Failed to delete testimonial"));
//       }
//     } catch (e) {
//       emit(TestimonialError("Error deleting testimonial"));
//     }
//   }
// }
