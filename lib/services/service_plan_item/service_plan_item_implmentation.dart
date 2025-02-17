// import 'dart:developer';

// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:ui/core/api/api_service.dart';
// import 'package:ui/core/api/end_points.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/service/service_detail.dart';
// import 'package:ui/model/service_item/service_item_create.dart';
// import 'package:ui/model/service_item/service_item_details.dart';
// import 'package:ui/services/service_plan_item/service_plan_item.dart';

// class ServicePlanImplementation implements ServicePalnItem {
//   @override
//   Future<GenericResponse> createService(ServiceItemCreate serviceItem) async {
//     final prefs = await SharedPreferences.getInstance();
//     final String? accessToken = prefs.getString("access_token");

//     try {
//       var apiService = ApiService();
//       final response = await apiService.makeRequest(
//         ApiMethod.post,
//         EndPoints.service,
//         headers: {
//           'Content-Type': 'application/json',
//           'Authorization': 'Bearer $accessToken',
//         },
//         data: serviceItem.toJson(),
//       );

//       if (response.status == ResponseStatus.success && response.obj != null) {
//         ServiceItemCreate serviceItemCreate =
//             ServiceItemCreate.fromJson(response.obj);
//         return GenericResponse(
//           code: 200,
//           obj: serviceItemCreate,
//           status: ResponseStatus.success,
//         );
//       } else {
//         log("API Error: ${response.message}");
//         return GenericResponse(
//           code: response.code,
//           status: ResponseStatus.fail,
//           message: response.message ?? "Unknown error",
//         );
//       }
//     } catch (e) {
//       log("Exception in createService: $e");
//       return GenericResponse(
//         code: 500,
//         status: ResponseStatus.fail,
//         message: "Error: ${e.toString()}",
//       );
//     }
//   }
//   // Future<GenericResponse> createService(ServiceItemCreate serviceitenm) async {
//   //   final prefs = await SharedPreferences.getInstance();
//   //   final String? accessToken = prefs.getString("access_token");
//   //   try {
//   //     var apiService = ApiService();
//   //     final response = await apiService.makeRequest(
//   //       ApiMethod.post,
//   //       EndPoints.service,
//   //       headers: {
//   //         'Content-Type': 'application/json',
//   //         'Authorization': 'Bearer $accessToken',
//   //       },
//   //       data: serviceitenm.toJson(),
//   //     );
//   //      ServiceItemCreate serviceItemCreate =
//   //         ServiceItemCreate.fromJson(response.obj);
//   //     return GenericResponse(
//   //       code: 200,
//   //       obj: serviceItemCreate,
//   //       status: ResponseStatus.success,
//   //     );
//   //   } on Exception catch (e) {
//   //     return GenericResponse(
//   //         code: 500, status: ResponseStatus.fail, message: e.toString());
//   //   }
//   // }

//   @override
//   Future<GenericResponse> getListService() async {
//     try {
//       var apiService = ApiService();
//       final response = await apiService.makeRequest(
//         ApiMethod.get,
//         EndPoints.serviceitem,
//       );

//       if (response.status == ResponseStatus.success) {
//         List<ServiceItemDetails> serviceItemDetails = (response.obj as List)
//             .map((serviceItemDetailsJson) => ServiceItemDetails.fromJson(
//                 serviceItemDetailsJson as Map<String, dynamic>))
//             .toList();

//         return GenericResponse(
//           code: 200,
//           obj: serviceItemDetails,
//           status: ResponseStatus.success,
//         );
//       } else {
//         return GenericResponse(
//           code: response.code,
//           status: ResponseStatus.fail,
//           message: response.message,
//         );
//       }
//     } on Exception catch (e) {
//       return GenericResponse(
//           code: 500, status: ResponseStatus.fail, message: e.toString());
//     }
//   }

//   @override
//   Future<GenericResponse> getdetailService() async {
//     try {
//       var apiService = ApiService();
//       final response = await apiService.makeRequest(
//         ApiMethod.get,
//         EndPoints.service,
//       );

//       List<ServiceDetail> serviceDetail = (response.obj);
//       // .map((serviceDetailJson) => ServiceDetail.fromJson(serviceDetailJson))
//       // .toList();
//       return GenericResponse(
//         code: 200,
//         obj: serviceDetail,
//         status: ResponseStatus.success,
//       );
//     } on Exception catch (e) {
//       return GenericResponse(
//           code: 500, status: ResponseStatus.fail, message: e.toString());
//     }
//   }
// }

import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service_item/service_item_create.dart';
import 'package:ui/model/service_item/service_item_details.dart';
import 'package:ui/services/service_plan_item/service_plan_item.dart';

class ServicePlanImplementation implements ServicePlanItem {
  @override
  Future<GenericResponse> createService(
      ServiceItemCreate serviceItem, int id) async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString("access_token");

    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.post,
        '${EndPoints.serviceitem}/$id',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: serviceItem.toJson(),
      );

      if (response.status == ResponseStatus.success && response.obj != null) {
        return GenericResponse(
          code: 200,
          obj: ServiceItemCreate.fromJson(response.obj),
          status: ResponseStatus.success,
        );
      } else {
        log("API Error: ${response.message}");
        return GenericResponse(
          code: response.code,
          status: ResponseStatus.fail,
          message: response.message ?? "Unknown error",
        );
      }
    } catch (e) {
      log("Exception in createService: $e");
      return GenericResponse(
        code: 500,
        status: ResponseStatus.fail,
        message: "Error: ${e.toString()}",
      );
    }
  }

  // Future<GenericResponse> updateService(
  //     int id, ServiceItemCreate serviceItem) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final String? accessToken = prefs.getString("access_token");
  //   try {
  //     var apiService = ApiService();
  //     final response = await apiService.makeRequest(
  //       ApiMethod.put, // استخدام PUT للتحديث
  //       '${EndPoints.serviceitem}/$id',
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $accessToken',
  //       },
  //       data: serviceItem.toJson(),
  //     );
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
  //     log("Exception in updateService: $e");
  //     return GenericResponse(
  //       code: 500,
  //       status: ResponseStatus.fail,
  //       message: "Error: ${e.toString()}",
  //     );
  //   }
  // }

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
  // Future<GenericResponse> deleteService(int id) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   final String? accessToken = prefs.getString("access_token");
  //   try {
  //     var apiService = ApiService();
  //     final response = await apiService.makeRequest(
  //       ApiMethod.delete, // استخدام DELETE للحذف
  //       '${EndPoints.serviceitem}/$id',
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': 'Bearer $accessToken',
  //       },
  //     );
  //     if (response.status == ResponseStatus.success) {
  //       return GenericResponse(
  //         code: 200,
  //         status: ResponseStatus.success,
  //         message: "Service item deleted successfully",
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
  //     log("Exception in deleteService: $e");
  //     return GenericResponse(
  //       code: 500,
  //       status: ResponseStatus.fail,
  //       message: "Error: ${e.toString()}",
  //     );
  //   }
  // }
}
