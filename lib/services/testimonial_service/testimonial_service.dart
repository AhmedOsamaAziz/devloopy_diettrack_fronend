import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/testimonials/testimonial_detail.dart';
import 'package:ui/model/testimonials/testimonial_list.dart';
import 'package:ui/model/testimonials/testimonial_update.dart';

class TestimonialService {
  @override
  Future<GenericResponse> createTestimonial() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.post,
        EndPoints.testimonil,
      );
      List<TestimonialList> testimonialList = (response.obj)
          .map((testimonialtJson) => TestimonialList.fromJson(testimonialtJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: testimonialList,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }

  @override
  Future<GenericResponse> detailsTestimonial() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.testimonil,
      );

      List<TestimonialDetail> testimonialsDetail = (response.obj)
          .map((testimoniaJson) => TestimonialDetail.fromJson(testimoniaJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: testimonialsDetail,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }

  @override
  Future<GenericResponse> getAllTestimonial() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.testimonil,
      );

      List<TestimonialList> testimonialList = (response.obj as List)
          .map((json) =>
              TestimonialList.fromJson(json))
          .toList();

      return GenericResponse(
          code: 200, obj: testimonialList, status: ResponseStatus.success);
    } on Exception catch (e) {
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
    }
  }

  @override
  Future<GenericResponse> updateTestimonial() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.testimonil,
      );

      List<TestimonialUpdate> testimonialUpdated = (response.obj);
      // .map((testimonialUpdatedtJson) =>
      //     TestimonialList.fromJson(testimonialUpdatedtJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: testimonialUpdated,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
    }
  }
}
