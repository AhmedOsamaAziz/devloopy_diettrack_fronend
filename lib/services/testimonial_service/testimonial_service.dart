import 'package:ui/core/api/generic_response.dart';

abstract class TestimonilsService {
  Future<GenericResponse> getAllTestimonial();
  Future<GenericResponse> createTestimonial();
  Future<GenericResponse> detailsTestimonial();
  Future<GenericResponse> updateTestimonial();
}
