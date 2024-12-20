import 'package:ui/model/team/team_base.dart';

class TeamCreate extends TeamBase {
  int teamId;

  TeamCreate({
    required this.teamId,
    required super.name,
    required super.image,
    required super.position,
  });
}
