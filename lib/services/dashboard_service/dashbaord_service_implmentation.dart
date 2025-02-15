import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/blog/blog_create.dart';
import 'package:ui/model/dashboard/dashboard.dart';
import 'package:ui/services/dashboard_service/dashbaord_service.dart';

class DashboardServiceImplementation implements DashboardService {
  @override
  Future<GenericResponse> createDashboard() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.post,
        EndPoints.dashboard,
      );
      List<BlogCreate> serviceCreate = (response.obj as List)
          .map((serviceJson) => BlogCreate.fromJson(serviceJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: serviceCreate,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 200,
      );
    }
  }

  @override
  Future<GenericResponse> deleteDashboard() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.dashboard,
      );

      return GenericResponse(
        status: ResponseStatus.success,
        code: 200,
      );
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }

  @override
  Future<GenericResponse> getDashboard() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.dashboard,
      );

      return GenericResponse(
        status: ResponseStatus.success,
        code: 200,
      );
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }

  @override
  Future<GenericResponse> updateDashboard() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.dashboard,
      );
      List<DashBoardCreate> serviceCreate = (response.obj);
      return GenericResponse(
        code: 200,
        obj: serviceCreate,
        status: ResponseStatus.success,
      );
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }
}
