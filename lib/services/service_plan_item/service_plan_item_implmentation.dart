import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service_item/service_item_create.dart';
import 'package:ui/model/service_item/service_item_details.dart';
import 'package:ui/services/service_plan_item/service_plan_item.dart';

class ServicePlanImplementation implements ServicePlanItem {
  @override
  // Future<GenericResponse> createService(
  //     ServiceItemCreate serviceItem, int id) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final String? accessToken = prefs.getString("access_token");
  //   try {
  //     var apiService = ApiService();
  //     final response = await apiService.makeRequest(
  //       ApiMethod.post,
  //       '${EndPoints.serviceitem}/$id',
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $accessToken',
  //       },
  //       data: serviceItem.toJson(),
  //     );
  //
  //     if (response.status == ResponseStatus.success && response.obj != null) {
  //       return GenericResponse(
  //         code: 200,
  //         obj: ServiceItemCreate.fromJson(response.obj),
  //         status: ResponseStatus.success,
  //       );
  //     } else {
  //       log("API Error: ${response.message}");
  //       return GenericResponse(
  //         code: response.code,
  //         status: ResponseStatus.fail,
  //         message: response.message ?? "Unknown error",
  //       );
  //     }
  //   } catch (e) {
  //     log("Exception in createService: $e");
  //     return GenericResponse(
  //       code: 500,
  //       status: ResponseStatus.fail,
  //       message: "Error: ${e.toString()}",
  //     );
  //   }
  // }
  //
  //

  @override
  Future<GenericResponse> getListService() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.serviceitem,
      );

      if (response.status == ResponseStatus.success && response.obj is List) {
        List<ServiceItemDetails> serviceItems = (response.obj as List)
            .map((json) =>
                ServiceItemDetails.fromJson(json as Map<String, dynamic>))
            .toList();

        return GenericResponse(
          code: 200,
          obj: serviceItems,
          status: ResponseStatus.success,
        );
      } else {
        return GenericResponse(
          code: response.code,
          status: ResponseStatus.fail,
          message: response.message ?? "Unknown error",
        );
      }
    } catch (e) {
      log("Exception in getListService: $e");
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
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

      if (response.status == ResponseStatus.success && response.obj is List) {
        List<ServiceItemDetails> serviceDetails = (response.obj as List)
            .map((json) =>
                ServiceItemDetails.fromJson(json as Map<String, dynamic>))
            .toList();

        return GenericResponse(
          code: 200,
          obj: serviceDetails,
          status: ResponseStatus.success,
        );
      } else {
        return GenericResponse(
          code: response.code,
          status: ResponseStatus.fail,
          message: response.message ?? "Unknown error",
        );
      }
    } catch (e) {
      log("Exception in getdetailService: $e");
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: e.toString(),
      );
    }
  }

  @override
  Future<GenericResponse> createService(
      ServiceItemCreate serviceItem, int id) async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString("access_token");

    print("Creating service item: ${serviceItem.toJson()}"); // Debugging

    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.post,
        '${EndPoints.serviceitem}/$id',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: [serviceItem.toJson()], // Wrap the object in a list
      );

      print(
          "API Response===========================: ${response.obj}"); // Debugging

      if (response.status == ResponseStatus.success && response.obj != null) {
        return GenericResponse(
          code: 200,
          obj: ServiceItemCreate.fromJson(response.obj),
          status: ResponseStatus.success,
        );
      } else {
        print("API Error: ${response.message}"); // Debugging
        return GenericResponse(
          code: response.code,
          status: ResponseStatus.fail,
          message: response.message ?? "Unknown error",
        );
      }
    } catch (e) {
      print("Exception in createService: $e"); // Debugging
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: "Error: ${e.toString()}",
      );
    }
  }

  @override
  Future<GenericResponse> updateService(
      ServiceItemDetails serviceItem, int id) async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString("access_token");

    print("Updating service item: ${serviceItem.toJson()}"); // Debugging

    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.put, // استخدام PUT للتحديث
        '${EndPoints.serviceitem}/$id',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: serviceItem.toJson(),
      );

      print("API Response: ${response.obj}"); // Debugging

      if (response.status == ResponseStatus.success && response.obj != null) {
        return GenericResponse(
          code: 200,
          obj: ServiceItemDetails.fromJson(response.obj),
          status: ResponseStatus.success,
        );
      } else {
        print("API Error: ${response.message}");
        return GenericResponse(
          code: response.code,
          status: ResponseStatus.fail,
          message: response.message ?? "Unknown error",
        );
      }
    } catch (e) {
      print("Exception in updateService: $e");
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: "Error: ${e.toString()}",
      );
    }
  }
}
