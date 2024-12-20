// import 'package:equatable/equatable.dart';
// import 'package:ui/model/team/team_base.dart';
// import 'package:ui/model/team/team_create.dart';
// import 'package:ui/model/team/team_delete.dart';
// import 'package:ui/model/team/team_update.dart';

// abstract class TeamState extends Equatable {
//   const TeamState();

//   @override
//   List<Object> get props => [];
// }

// class TeamInitial extends TeamState {}

// class TeamLoading extends TeamState {}

// class TeamSuccess extends TeamState {
//   final List<TeamBase> teams;

//   const TeamSuccess({required this.teams});

//   @override
//   List<Object> get props => [teams];
// }

// class TeamCreated extends TeamState {
//   final List<TeamCreate> teamCreate;

//   const TeamCreated({required this.teamCreate});
// }

// class TeamUpdated extends TeamState {
//   final List<TeamUpdate> teamUpdate;

//   const TeamUpdated({required this.teamUpdate});
// }

// class TeamDeleted extends TeamState {
//   final List<TeamDelete> teamDelete;

//   const TeamDeleted({required this.teamDelete});
// }

// class TeamError extends TeamState {
//   final String message;

//   const TeamError({required this.message});

//   @override
//   List<Object> get props => [message];
// }
