part of 'blog_cubit.dart';

sealed class BlogState extends Equatable {
  const BlogState();

  @override
  List<Object> get props => [];
}

final class BlogInitial extends BlogState {}

final class BlogLoading extends BlogState {}

final class BlogSuccess extends BlogState {
  final List<BlogList> blogs;

  const BlogSuccess(this.blogs);
}

final class BlogFailure extends BlogState {
  final String errMessage;

  const BlogFailure({required this.errMessage});
}

// ignore: must_be_immutable
final class BlogNoData extends BlogState {
  Widget noDataMessage = const Text(
    'Not Available blog right now.',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  );
}
