import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service_item/service_item_create.dart';

abstract class ServicePlanItem {
  // Future<GenericResponse> getAllService();
  Future<GenericResponse> createService(ServiceItemCreate serviceItem, int id);
  Future<GenericResponse> getListService();
  Future<GenericResponse> getdetailService();
}
