import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:ui/model/testimonials/testimonial_create.dart';
import 'package:ui/model/testimonials/testimonial_detail.dart';
import 'package:ui/model/testimonials/testimonial_list.dart';
import 'package:ui/model/testimonials/testimonial_update.dart';
import 'package:ui/services/testimonial_service/testimonial_service.dart';

part 'testimonils_state.dart';

class TestimonilsCubit extends Cubit<TestimonilsState> {
  TestimonilsCubit() : super(TestimonilsInitial());

  Future<void> getAllTestimonial() async {
    emit(TestimonilsLoading());
    try {
      TestimonialService testimonialsService = TestimonialService();
      var response = await testimonialsService.getAllTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialBase> testimonials = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonials));
      }
    } catch (e) {
      emit(TestimonilFailur(errMessage: e.toString()));
    }
  }

  Future<void> createTestimonial() async {
    emit(TestimonilsLoading());
    try {
      TestimonialService testimonialsService = TestimonialService();
      var response = await testimonialsService.createTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialCreate> testimonialCreate = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonialCreate));
      }
    } catch (e) {
      emit(TestimonilFailur(errMessage: e.toString()));
    }
  }

  Future<void> detailsTestimonial() async {
    emit(TestimonilsLoading());
    try {
      TestimonialService testimonialsService = TestimonialService();

      var response = await testimonialsService.detailsTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialDetail> testimonialDetail = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonialDetail));
      }
    } catch (e) {
      emit(TestimonilFailur(errMessage: e.toString()));
    }
  }

  Future<void> updateTestimonial() async {
    emit(TestimonilsLoading());
    try {
      TestimonialService testimonialsService = TestimonialService();

      var response = await testimonialsService.updateTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialUpdate> testimonialUpdate = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonialUpdate));
      }
    } catch (e) {
      emit(TestimonilFailur(errMessage: e.toString()));
    }
  }
}
