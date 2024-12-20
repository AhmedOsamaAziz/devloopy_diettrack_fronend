import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service/service_base.dart';
import 'package:ui/model/service/service_create.dart';
import 'package:ui/model/service/service_detail.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/services/service_plan/service_plan.dart';

class ServicePalnImplmention implements ServicePaln {
  @override
  Future<GenericResponse> createService() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.services,
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
  Future<GenericResponse> getAllService() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.services,
      );

      List<ServiceBase> serviceBase = (response.obj);
      // .map((serviceBaseetJson) => ServiceBase.fromJson(serviceBaseJson))
      // .toList();
      return GenericResponse(
        code: 200,
        obj: serviceBase,
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
        EndPoints.services,
      );

      List<ServiceList> serviceList = (response.obj);
      // .map((serviceListJson) => ServiceList.fromJson(serviceListJson))
      // .toList();
      return GenericResponse(
        code: 200,
        obj: serviceList,
        status: ResponseStatus.success,
      );
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
        EndPoints.services,
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
