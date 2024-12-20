import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:ui/model/testimonials/testimonial_create.dart';
import 'package:ui/model/testimonials/testimonial_detail.dart';
import 'package:ui/model/testimonials/testimonial_update.dart';
import 'package:ui/services/testimonial_service/testimonial_service_implementation.dart';

part 'testimonils_state.dart';

class TestimonilsCubit extends Cubit<TestimonilsState> {
  TestimonilsCubit() : super(TestimonilsInitial());

  Future<void> getAllTestimonial() async {
    emit(TestimonilsLoading());
    try {
      var testimonilsService = TestimonialServiceImplementation();
      var response = await testimonilsService.getAllTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialBase> testimonialBase = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonialBase));
      }
    } catch (e) {
      emit(const TestimonilFailur(errMessage: 'Sorry No Testimonils Now ,,'));
    }
  }

  Future<void> createTestimonial() async {
    emit(TestimonilsLoading());
    try {
      var testimonilsService = TestimonialServiceImplementation();
      var response = await testimonilsService.createTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialCreate> testimonialCreate = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonialCreate));
      }
    } catch (e) {
      emit(const TestimonilFailur(
          errMessage: 'Sorry No Testimonils Created...'));
    }
  }

  Future<void> detailsTestimonial() async {
    emit(TestimonilsLoading());
    try {
      var testimonilsService = TestimonialServiceImplementation();
      var response = await testimonilsService.detailsTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialDetail> testimonialDetail = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonialDetail));
      }
    } catch (e) {
      emit(const TestimonilFailur(errMessage: 'Sorry No Testimonil Detail...'));
    }
  }

  Future<void> updateTestimonial() async {
    emit(TestimonilsLoading());
    try {
      var testimonilsService = TestimonialServiceImplementation();
      var response = await testimonilsService.updateTestimonial();

      if (response.status == ResponseStatus.success) {
        final List<TestimonialUpdate> testimonialUpdate = response.obj;
        emit(TestimonilsSuccess(testimonials: testimonialUpdate));
      }
    } catch (e) {
      emit(
          const TestimonilFailur(errMessage: 'Sorry No Testimonil Updated...'));
    }
  }
}
