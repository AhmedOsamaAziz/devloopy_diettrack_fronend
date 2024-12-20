import 'package:ui/core/api/generic_response.dart';

abstract class ServicePaln {
  Future<GenericResponse> getAllService();
  Future<GenericResponse> createService();
  Future<GenericResponse> getListService();
  Future<GenericResponse> getdetailService();
}
