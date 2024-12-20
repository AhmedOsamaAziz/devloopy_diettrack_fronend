import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service_item/service_item_base.dart';
import 'package:ui/model/service_item/service_item_details.dart';
import 'package:ui/model/service_item/service_item_update.dart';
import 'package:ui/services/service_plan_item/service_plan_item.dart';

class ServicePlanItemImplmentation implements ServicePlanItem {
  @override
  Future<GenericResponse> createServiceItem() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.services,
      );
      List<ServiceItemBase> serviceItemBase = (response.obj);
      // .map((serviceItemBaseJson) => ServiceItemBase.fromJson(serviceItemBaseJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: serviceItemBase,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }

  @override
  Future<GenericResponse> detailsServiceItem() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.services,
      );
      List<ServiceItemDetails> serviceItemDetails = (response.obj);
      // .map((serviceItemDetailsJson) => ServiceItemDetails.fromJson(serviceItemDetailsJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: serviceItemDetails,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }

  @override
  Future<GenericResponse> getBaseServiceItem() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.services,
      );
      List<ServiceItemBase> serviceItemBase = (response.obj);
      // .map((serviceItemBaseJson) => ServiceItemBase.fromJson(serviceItemBaseJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: serviceItemBase,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }

  @override
  Future<GenericResponse> updateServiceItem() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.services,
      );
      List<ServiceItemUpdate> serviceItemUpdate = (response.obj);
      // .map((serviceItemUpdateJson) => ServiceItemUpdate.fromJson(serviceItemUpdateJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: serviceItemUpdate,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }
}
