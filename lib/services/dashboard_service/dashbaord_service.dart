import '../../core/api/generic_response.dart';

abstract class DashboardService {
  Future<GenericResponse> getDashboard();
  Future<GenericResponse> createDashboard();
  Future<GenericResponse> updateDashboard();
  Future<GenericResponse> deleteDashboard();
}
