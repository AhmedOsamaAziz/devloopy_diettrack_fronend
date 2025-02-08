import 'package:equatable/equatable.dart';
import 'package:ui/model/blog/blog_list.dart';

abstract class BlogDashboardState extends Equatable {
  const BlogDashboardState();

  @override
  List<Object?> get props => [];
}

class BlogDashboardInitial extends BlogDashboardState {}

class BlogDashboardLoading extends BlogDashboardState {}

class BlogDashboardLoaded extends BlogDashboardState {
  final List<BlogList> blogs;
  const BlogDashboardLoaded(this.blogs);

  @override
  List<Object?> get props => [blogs];
}

class BlogDashboardError extends BlogDashboardState {
  final String message;
  const BlogDashboardError(this.message);

  @override
  List<Object?> get props => [message];
}
