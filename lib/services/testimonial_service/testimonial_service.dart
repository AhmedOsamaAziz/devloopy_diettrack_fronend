import 'package:dio/dio.dart';
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
        EndPoints.testimonial,
        data: testimonial.toJson(),
        headers: {'Content-Type': 'application/json'},
      );

      // تحقق من نوع الاستجابة
      TestimonialList testimonialList;
      if (response.obj is Map<String, dynamic>) {
        testimonialList = TestimonialList.fromJson(response.obj);
      } else {
        throw Exception(
            "Unexpected response.obj type: ${response.obj.runtimeType}");
      }

      return GenericResponse(
        code: response.code,
        obj: testimonialList, //   أن obj أصبح عنصرًا فرديًا
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
        EndPoints.testimonial,
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
        '${EndPoints.testimonial}?page=$page&limit=$limit',
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
      TestimonialUpdate testimonialUpdate) async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.put,  
        EndPoints.testimonial,
        data: testimonialUpdate.toJson(),
        headers: {'Content-Type': 'application/json'},
      );
      TestimonialList updatedTestimonial =
          TestimonialList.fromJson(response.obj);

      if (response.code == 200) {
        return GenericResponse(
          code: response.code,
          obj: updatedTestimonial,
          
          status: ResponseStatus.success,
          message: response.message,
        );
      } else {
        throw Exception("Failed with status code: ${response.code}");
      }
    } on DioException catch (e) {
      // Handle Dio errors
      return GenericResponse(
        code: e.response?.statusCode ?? 500,
        status: ResponseStatus.fail,
        message: e.message ?? 'Unknown Dio error',
      );
    } catch (e) {
      // Handle other errors
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
        ApiMethod.delete,
        EndPoints.testimonial,
        data: testimonialCreate?.toJson(),
        headers: {
          'Content-Type': 'application/json',
        },
        queryParameters: testimonialCreate?.toJson(),
      );
      List<dynamic> testimonialList = (response.obj)
          .map((testimonialtJson) => TestimonialList.fromJson(testimonialtJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: testimonialList,
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
}
