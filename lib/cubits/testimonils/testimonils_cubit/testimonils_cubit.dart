import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/testimonials/testimonial_base.dart';
import 'package:ui/model/testimonials/testimonial_create.dart';
import 'package:ui/model/testimonials/testimonial_detail.dart';
import 'package:ui/model/testimonials/testimonial_update.dart';
import 'package:ui/services/testimonial_service/testimonial_service.dart';

part 'testimonils_state.dart';

class TestimonilsCubit extends Cubit<TestimonilsState> {
  TestimonilsCubit() : super(TestimonilsInitial());

  List<TestimonialBase> allTestimonials = [];
  int currentPage = 0;
  final int itemsPerPage = 25;

  Future<void> getAllTestimonial() async {
    emit(TestimonilsLoading());
    try {
      TestimonialService testimonialsService = TestimonialService();
      var response = await testimonialsService.getAllTestimonial(
          page: currentPage, limit: itemsPerPage);

      if (response.status == ResponseStatus.success) {
        allTestimonials = response.obj;
        emit(TestimonilsSuccess(
          testimonials: _getCurrentPageItems(),
        ));
      }
    } catch (e) {
      emit(TestimonilFailur(errMessage: e.toString()));
    }
  }

  void showNextPage() {
    if ((currentPage + 1) * itemsPerPage < allTestimonials.length) {
      currentPage++;
      emit(TestimonilsSuccess(
        testimonials: _getCurrentPageItems(),
      ));
    }
  }

  void showPreviousPage() {
    if (currentPage > 0) {
      currentPage--;
      emit(TestimonilsSuccess(
        testimonials: _getCurrentPageItems(),
      ));
    }
  }

  List<TestimonialBase> _getCurrentPageItems() {
    final startIndex = currentPage * itemsPerPage;
    final endIndex = (startIndex + itemsPerPage) > allTestimonials.length
        ? allTestimonials.length
        : startIndex + itemsPerPage;
    return allTestimonials.sublist(startIndex, endIndex);
  }

  Future<void> createTestimonial(TestimonialCreate testimonial) async {
    emit(TestimonilsLoading());
    try {
      TestimonialService testimonialsService = TestimonialService();
      var response = await testimonialsService.createTestimonial(testimonial);

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

  Future<void> updateTestimonial(TestimonialUpdate testimonialUpdate) async {
    emit(TestimonilsLoading()); // Emit loading state
    try {
      TestimonialService testimonialsService = TestimonialService();

      var response =
          await testimonialsService.updateTestimonial(testimonialUpdate);

      if (response.status == ResponseStatus.success) {
        emit(TestimonilsSuccess(testimonials: allTestimonials));
      } else {
        emit(TestimonilFailur(
            errMessage: response.message ?? 'Failed to update testimonial'));
      }
    } catch (e) {
      emit(TestimonilFailur(errMessage: e.toString()));
    }
  }
}
