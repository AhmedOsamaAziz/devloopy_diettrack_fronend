import 'package:ui/model/comments/comment_base.dart';

class TeamDelete extends CommentBase {
  int teamId;

  TeamDelete({
    required this.teamId,
    required super.body,
  });
}
