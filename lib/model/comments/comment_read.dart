import 'package:ui/model/comments/comment_base.dart';

class CommentRead extends CommentBase {
  DateTime createdAt;
  String userName;

  CommentRead({
    required this.createdAt,
    required this.userName,
    required super.body,
  });
}
