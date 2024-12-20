import 'package:equatable/equatable.dart';
import 'package:ui/model/dashboard/dashboard.dart';

abstract class BlogState extends Equatable {
  const BlogState();

  @override
  List<Object?> get props => [];
}

class BlogInitial extends BlogState {}

class BlogLoading extends BlogState {}

class BlogSuccess extends BlogState {
  final List<DashBoardCreate> blogs;

  const BlogSuccess({required this.blogs});

  @override
  List<Object?> get props => [blogs];
}

class BlogFailure extends BlogState {
  final String errorMessage;

  const BlogFailure({required this.errorMessage});

  @override
  List<Object?> get props => [errorMessage];
}
