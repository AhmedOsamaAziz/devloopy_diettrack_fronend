import 'package:ui/core/api/generic_response.dart';

abstract class ServicePalnItem {
  // Future<GenericResponse> getAllService();
  Future<GenericResponse> createService();
  Future<GenericResponse> getListService();
  Future<GenericResponse> getdetailService();
}
