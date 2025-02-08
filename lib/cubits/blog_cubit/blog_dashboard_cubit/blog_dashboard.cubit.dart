import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/cubits/blog_cubit/blog_dashboard_cubit/blog_dashboard.state.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/services/blog_service/blog_service.dart';


class BlogDashboardCubit extends Cubit<BlogDashboardState> {
  final BlogService _blogService;

  BlogDashboardCubit(this._blogService) : super(BlogDashboardInitial());

  void fetchBlogs() async {
    emit(BlogDashboardLoading());
    final response = await _blogService.getAllBlogs();

    if (response.status == ResponseStatus.success) {
      emit(BlogDashboardLoaded(response.obj as List<BlogList>));
    } else {
      emit(BlogDashboardError(response.message ?? 'Failed to fetch blogs'));
    }
  }
}
