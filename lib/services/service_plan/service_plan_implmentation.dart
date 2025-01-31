import 'dart:convert';

import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service/service_create.dart';
import 'package:ui/model/service/service_list.dart';
import 'package:ui/model/service_item/service_item_base.dart';
import 'package:ui/model/service_item/service_item_details.dart';
import 'package:ui/model/service_item/service_item_update.dart';

class ServicePlanImplmentation {
  Future<GenericResponse> createServiceItem(ServiceCreate serviceCreate) async {
    try {
      var apiService = ApiService();

      final requestBody = jsonEncode(serviceCreate.toJson());

      final response = await apiService.makeRequest(
        ApiMethod.post,
        EndPoints.service,
        data: requestBody,
      );

      // Handle the response
      if (response.status == ResponseStatus.success) {
        List<ServiceItemBase> serviceItemBase = (response.obj)
            .map((serviceItemBaseJson) =>
                ServiceItemBase.fromJson(serviceItemBaseJson))
            .toList();

        return GenericResponse(
          code: 200,
          obj: serviceItemBase,
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
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
    }
  }

  Future<GenericResponse> detailsServiceItem() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.service,
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

  Future<GenericResponse> getBaseServiceItem() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get, // Ensure this matches the type of request (GET)
        EndPoints.service, // Your API endpoint for services
      );

      if (response.status == ResponseStatus.success) {
        // Convert the response to your model
        List<ServiceList> services = (response.obj as List)
            .map((serviceJson) => ServiceList.fromJson(serviceJson))
            .toList();

        return GenericResponse(
          code: 200,
          obj: services,
          status: ResponseStatus.success,
        );
      } else {
        return GenericResponse(
          code: response.code,
          status: ResponseStatus.fail,
          message: response.message,
        );
      }
    } catch (e) {
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
    }
  }

  Future<GenericResponse> updateServiceItem() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.service,
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
