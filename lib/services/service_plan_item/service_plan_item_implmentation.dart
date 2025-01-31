import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service/service_create.dart';
import 'package:ui/model/service/service_detail.dart';
import 'package:ui/model/service_item/service_item_details.dart';
import 'package:ui/services/service_plan_item/service_plan_item.dart';

class ServicePlanImplementation implements ServicePalnItem {
  @override
  Future<GenericResponse> createService() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.service,
      );

      List<ServiceCreate> serviceCreate = (response.obj);
      // .map((serviceCreatetJson) => ServiceCreate.fromJson(serviceCreatetJson))
      // .toList();
      return GenericResponse(
        code: 200,
        obj: serviceCreate,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }

  @override
  Future<GenericResponse> getListService() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.serviceitem,
      );

      if (response.status == ResponseStatus.success) {
        List<ServiceItemDetails> serviceItemDetails = (response.obj as List)
            .map((serviceItemDetailsJson) => ServiceItemDetails.fromJson(
                serviceItemDetailsJson as Map<String, dynamic>))
            .toList();

        return GenericResponse(
          code: 200,
          obj: serviceItemDetails,
          status: ResponseStatus.success,
        );
      } else {
        return GenericResponse(
          code: response.code,
          status: ResponseStatus.fail,
          message: response.message,
        );
      }
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }

  @override
  Future<GenericResponse> getdetailService() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.service,
      );

      List<ServiceDetail> serviceDetail = (response.obj);
      // .map((serviceDetailJson) => ServiceDetail.fromJson(serviceDetailJson))
      // .toList();
      return GenericResponse(
        code: 200,
        obj: serviceDetail,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
          code: 500, status: ResponseStatus.fail, message: e.toString());
    }
  }
}
