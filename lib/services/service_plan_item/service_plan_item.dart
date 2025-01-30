import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service/service_create.dart';

abstract class ServicePlanItem {
  Future<GenericResponse> getBaseServiceItem();
Future<GenericResponse> createServiceItem(ServiceCreate serviceCreate);
  Future<GenericResponse> detailsServiceItem();
  Future<GenericResponse> updateServiceItem();
}
