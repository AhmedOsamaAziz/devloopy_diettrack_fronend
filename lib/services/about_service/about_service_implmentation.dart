import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/about/about_base.dart';
import 'package:ui/model/about/about_create.dart';
import 'package:ui/model/about/about_delete.dart';
import 'package:ui/model/about/about_update.dart';
import 'package:ui/services/about_service/about_service.dart';

class AboutServiceImplmentation extends AboutService {
  @override
  Future<GenericResponse> getAbout() async {
    try {
      var apiService = ApiService();

      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.about,
      );
      List<AboutBase> about = (response.obj)
          .map((teamJson) => AboutBase.fromJson(teamJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: about,
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

  @override
  Future<GenericResponse> createAbout() async {
    try {
      var apiService = ApiService();

      final response = await apiService.makeRequest(
        ApiMethod.post,
        EndPoints.about,
      );
      List<AboutCreate> about = (response.obj)
          .map((teamJson) => AboutCreate.fromJson(teamJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: about,
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

  @override
  Future<GenericResponse> deleteAbout() async {
    try {
      var apiService = ApiService();

      final response = await apiService.makeRequest(
        ApiMethod.delete,
        EndPoints.about,
      );
      List<AboutDelete> about = (response.obj);

      return GenericResponse(
        code: 200,
        obj: about,
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

  @override
  Future<GenericResponse> updateAbout() async {
    try {
      var apiService = ApiService();

      final response = await apiService.makeRequest(
        ApiMethod.put,
        EndPoints.about,
      );
      List<AboutUpdate> about = (response.obj);

      return GenericResponse(
        code: 200,
        obj: about,
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
