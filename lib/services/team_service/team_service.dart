import 'package:ui/core/api/generic_response.dart';

abstract class TeamService {
  Future<GenericResponse> getTeamList();
  Future<GenericResponse> createNewTeam();
  Future<GenericResponse> updateTeam();
  Future<GenericResponse> deleteTeam();
}
