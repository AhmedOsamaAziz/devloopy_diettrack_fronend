import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/service/service_list.dart';
import 'service_state.dart'; // The file where the states are defined

class ServiceCubit extends Cubit<ServiceState> {
  ServiceCubit(this._apiService) : super(ServiceInitial());
  final ApiService _apiService;

  Future<void> loadServices() async {
    try {
      emit(ServiceLoading());

      // Fetch data from API
      final response = await _apiService.makeRequest(
        ApiMethod.get,
        EndPoints.service,
      );

      if (response.status == ResponseStatus.success) {
         if (response.obj is List) {
          try {
            final List<dynamic> rawList = response.obj as List<dynamic>;

            final List<ServiceList> service = rawList
                .map((serviceJson) =>
                    ServiceList.fromJson(serviceJson as Map<String, dynamic>))
                .toList();

            // Check if service list is empty
            if (service.isEmpty) {
              emit(ServiceNoData());
            } else {
              emit(ServiceSuccess(service));
            }
          } catch (e) {
            print('Error parsing services: $e');
            emit(ServiceFailure());
          }
        } else {
          print('Unexpected response format: ${response.obj}');
          emit(ServiceFailure());
        }
      } else {
        emit(ServiceFailure());
      }
    } catch (e) {
      print('Exception occurred: $e');
      emit(ServiceFailure());
    }
  }
}
