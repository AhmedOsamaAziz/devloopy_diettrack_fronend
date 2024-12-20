import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/team/team_base.dart';
import 'package:ui/model/team/team_create.dart';
import 'package:ui/model/team/team_delete.dart';
import 'package:ui/model/team/team_update.dart';
import 'package:ui/services/team_service/team_service.dart';

class TeamServiceImplementation extends TeamService {
  @override
  Future<GenericResponse> getTeamList() async {
    try {
      var apiService = ApiService();

      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.team,
      );

      List<TeamBase> getTeam = (response.obj)
          .map((teamJson) => TeamBase.fromJson(teamJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: getTeam,
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
  Future<GenericResponse> createNewTeam() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.post,
        EndPoints.team,
      );

      List<TeamCreate> teamCreate = (response.obj)
          .map((teamJson) => TeamBase.fromJson(teamJson))
          .toList();

      return GenericResponse(
        code: 200,
        obj: teamCreate,
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
  Future<GenericResponse> deleteTeam() async {
    try {
      var apiService = ApiService();

      final response = await apiService.makeRequest(
        ApiMethod.delete,
        EndPoints.team,
      );
      List<TeamDelete> teamDelete = (response.obj);
      // .map((teamJson) => TeamDelete.fromJson(teamJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: teamDelete,
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
  Future<GenericResponse> updateTeam() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.put,
        EndPoints.team,
      );

      List<TeamUpdate> updateTeam = (response.obj);
      // .map((teamJson) => TeamUpdate.fromJson(teamJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: updateTeam,
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
