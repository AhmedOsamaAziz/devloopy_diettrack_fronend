import 'package:ui/model/comments/comment_base.dart';

class CommentCreate extends CommentBase {
  int blogId;
  String authorId;

  CommentCreate({
    required this.blogId,
    required this.authorId,
    required super.body,
  });
}
