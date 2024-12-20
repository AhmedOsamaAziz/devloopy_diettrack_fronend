import 'package:ui/model/team/team_base.dart';

class TeamUpdate extends TeamBase {
  int id;
  TeamUpdate({
    required this.id,
    required super.name,
    required super.image,
    required super.position,
  });
}
