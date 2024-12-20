part of 'comment_cubit.dart';

sealed class CommentState extends Equatable {
  const CommentState();

  @override
  List<Object> get props => [];
}

final class CommentInitial extends CommentState {}

final class CommentLoading extends CommentState {}

final class CommentSuccess extends CommentState {}

final class CommentFailur extends CommentState {
  final String errMessage;

  const CommentFailur({required this.errMessage});
}
