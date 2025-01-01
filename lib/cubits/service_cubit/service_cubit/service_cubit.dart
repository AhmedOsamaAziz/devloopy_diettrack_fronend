import 'dart:developer';

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

      final response = await _apiService.makeRequest(
        ApiMethod.get,
        EndPoints.service,
      );

      if (response.status == ResponseStatus.success) {
        log(response.obj.toString());

        if (response.obj is List) {
          final List<ServiceList> service = (response.obj as List)
              .map((serviceJson) => ServiceList.fromJson(serviceJson))
              .toList();

          if (service.isEmpty) {
            emit(ServiceNoData());
          } else {
            emit(ServiceSuccess(service));
          }
        } else {
          emit(ServiceFailure());
        }
      } else {
        emit(ServiceFailure());
      }
    } catch (e) {
      print(e.toString());
      emit(ServiceFailure());
    }
  }
}
