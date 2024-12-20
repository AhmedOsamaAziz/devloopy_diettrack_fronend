// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/team/team_base.dart';
// import 'package:ui/model/team/team_create.dart';
// import 'package:ui/model/team/team_delete.dart';
// import 'package:ui/model/team/team_update.dart';
// import 'package:ui/services/team_service/team_service_implmentation.dart';
// import 'team_state.dart';

// class TeamCubit extends Cubit<TeamState> {
//   TeamCubit() : super(TeamInitial());

//   Future<void> getTeams() async {
//     emit(TeamLoading());
//     try {
//       var teamService = TeamServiceImplementation();
//       var response = await teamService.getTeamList();
//       if (response.status == ResponseStatus.success) {
//         final List<TeamBase> getTeams = response.obj;
//         emit(TeamSuccess(teams: getTeams));
//       }
//     } on Exception catch (e) {
//       emit(TeamError(message: 'An error occurred while fetching teams: $e'));
//     }
//   }

//   Future<void> createTeam() async {
//     emit(TeamLoading());
//     try {
//       var teamService = TeamServiceImplementation();
//       var response = await teamService.createNewTeam();

//       if (response.status == ResponseStatus.success) {
//         final List<TeamCreate> teamCreate = response.obj;
//         emit(TeamCreated(teamCreate: teamCreate));
//         getTeams(); // Fetch updated list
//       }
//     } on Exception catch (e) {
//       emit(TeamError(message: 'An error occurred while creating team: $e'));
//     }
//   }

//   Future<void> updateTeam() async {
//     emit(TeamLoading());
//     try {
//       var teamService = TeamServiceImplementation();
//       var response = await teamService.updateTeam();

//       if (response.status == ResponseStatus.success) {
//         final List<TeamUpdate> teamUpdate = response.obj;
//         emit(TeamUpdated(teamUpdate: teamUpdate));
//       }
//     } on Exception catch (e) {
//       emit(TeamError(message: 'An error occurred while updating team: $e'));
//     }
//   }

//   Future<void> deleteTeam() async {
//     emit(TeamLoading());
//     try {
//       var teamService = TeamServiceImplementation();
//       var response = await teamService.deleteTeam();

//       if (response.status == ResponseStatus.success) {
//         final List<TeamDelete> teamDelete = response.obj;
//         emit(TeamDeleted(teamDelete: teamDelete));
//       }
//     } on Exception catch (e) {
//       emit(TeamError(message: 'An error occurred while deleting team: $e'));
//     }
//   }
// }
