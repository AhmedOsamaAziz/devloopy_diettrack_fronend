import 'package:bloc/bloc.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/cubits/dashboard/dashboard_cubit/dashborad_state.dart';
import 'package:ui/model/blog/blog_create.dart';
import 'package:ui/model/dashboard/dashboard.dart';
import 'package:ui/services/dashboard_service/dashbaord_service_implmentation.dart';

class BlogCubit extends Cubit<BlogState> {
  BlogCubit() : super(BlogInitial());

  Future<void> getDashboard() async {
    emit(BlogLoading());
    try {
      var blogService = DashbaordServiceImplmentation();
      var response = await blogService.getDashboard();

      if (response.status == ResponseStatus.success) {
        final List<DashBoardCreate> blogs = response.obj;
        emit(BlogSuccess(blogs: blogs));
      } else {
        emit(const BlogFailure(errorMessage: 'Failed to fetch Dashboard.'));
      }
    } catch (e) {
      emit(const BlogFailure(
          errorMessage: 'Error occurred while fetching Dashboard.'));
    }
  }

  Future<void> createDashboard(BlogCreate blog) async {
    emit(BlogLoading());
    try {
      var blogService = DashbaordServiceImplmentation();
      var response = await blogService.createDashboard();

      if (response.status == ResponseStatus.success) {
        await getDashboard();
      } else {
        emit(const BlogFailure(errorMessage: 'Failed to create Dashboard.'));
      }
    } catch (e) {
      emit(const BlogFailure(
          errorMessage: 'Error occurred while creating Dashboard.'));
    }
  }

  Future<void> updateDashboard(String blogId, BlogCreate updatedBlog) async {
    emit(BlogLoading());
    try {
      var blogService = DashbaordServiceImplmentation();
      var response = await blogService.updateDashboard();

      if (response.status == ResponseStatus.success) {
        await getDashboard();
      } else {
        emit(const BlogFailure(errorMessage: 'Failed to update Dashboard(.'));
      }
    } catch (e) {
      emit(const BlogFailure(
          errorMessage: 'Error occurred while updating Dashboard(.'));
    }
  }

  Future<void> deleteDashboard(String blogId) async {
    emit(BlogLoading());
    try {
      var blogService = DashbaordServiceImplmentation();
      var response = await blogService.deleteDashboard();

      if (response.status == ResponseStatus.success) {
        await getDashboard();
      } else {
        emit(const BlogFailure(errorMessage: 'Failed to delete Dashboard.'));
      }
    } catch (e) {
      emit(const BlogFailure(
          errorMessage: 'Error occurred while deleting Dashboard.'));
    }
  }
}
