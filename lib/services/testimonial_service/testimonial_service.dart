import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/testimonials/testimonial_create.dart';
import 'package:ui/model/testimonials/testimonial_detail.dart';
import 'package:ui/model/testimonials/testimonial_list.dart';
import 'package:ui/model/testimonials/testimonial_update.dart';

class TestimonialService {
  Future<GenericResponse> createTestimonial(
      TestimonialCreate testimonial) async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.post,
        EndPoints.testimonil,
        data: testimonial.toJson(),
        headers: {'Content-Type': 'application/json'},
      );
      // List<TestimonialList> testimonialList = (response.obj)
      //     .map((testimonialtJson) => TestimonialList.fromJson(testimonialtJson))
      //     .toList();

      return GenericResponse(
        code: response.code,
        obj: response.obj,
        status: ResponseStatus.success,
        message: response.message,
      );
    } on Exception catch (e) {
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
    }
  }

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

  Future<GenericResponse> getAllTestimonial(
      {required int page, required int limit}) async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        '${EndPoints.testimonil}?page=$page&limit=$limit',
      );

      List<TestimonialList> testimonialList = (response.obj as List)
          .map((json) => TestimonialList.fromJson(json))
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

  Future<GenericResponse> updateTestimonial(
      TestimonialUpdate testimonial) async {
    try {
      var _apiService = ApiService();
      final response = await _apiService.makeRequest(
        ApiMethod.put,
        EndPoints.testimonil,
        data: testimonial.toJson(),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      return GenericResponse(
        code: response.code,
        status: ResponseStatus.fail,
        message: response.message,
      );
    } on Exception catch (e) {
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
    }
  }

  Future<GenericResponse> deleteTestimonial(
      [TestimonialCreate? testimonialCreate]) async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.testimonil,
      );

      return GenericResponse(
        code: 200,
        obj: response.obj,
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
