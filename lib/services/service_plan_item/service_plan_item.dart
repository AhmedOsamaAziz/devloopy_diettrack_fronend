import 'package:ui/core/api/generic_response.dart';

abstract class ServicePlanItem {
  Future<GenericResponse> getBaseServiceItem();
  Future<GenericResponse> createServiceItem();
  Future<GenericResponse> detailsServiceItem();
  Future<GenericResponse> updateServiceItem();
}
