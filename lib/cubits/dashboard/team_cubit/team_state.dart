import 'package:ui/model/team/team_list.dart';

abstract class TeamState {}

class TeamInitial extends TeamState {}

class TeamLoading extends TeamState {}

class TeamLoaded extends TeamState {
  final List<TeamList> teams;

  TeamLoaded({required this.teams});
}

class TeamError extends TeamState {
  final String message;

  TeamError(this.message);
}
