import 'package:ui/core/api/generic_response.dart';

abstract class AboutService {
  Future<GenericResponse> createAbout();
  Future<GenericResponse> getAbout();
  Future<GenericResponse> updateAbout();
  Future<GenericResponse> deleteAbout();
}
