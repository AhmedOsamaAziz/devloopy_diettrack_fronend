import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/blog/blog_create.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/model/blog/blog_update.dart';
import 'package:ui/services/blog_service/blog_service.dart';

part 'blog_state.dart';

class BlogCubit extends Cubit<BlogState> {
  BlogCubit() : super(BlogInitial());

  Future<void> allBlogs() async {
    emit(BlogLoading());

    try {
      var blogService = BlogService();
      var response = await blogService.getAllBlogs();

      if (response.status == ResponseStatus.success) {
        final List<BlogList> blogs = response.obj;

        if (blogs.isEmpty) {
          emit(BlogNoData());
        } else {
          emit(BlogSuccess(blogs));
        }
      } else {
        emit(BlogFailure(errMessage: response.message ?? 'An error occurred'));
      }
    } catch (e) {
      emit(BlogFailure(errMessage: "An Error Occurred While loading data. $e"));
    }
  }

  Future<void> fetchRecentBlogs() async {
    emit(BlogLoading());

    try {
      var blogService = BlogService();
      var response = await blogService.getRecentBlogs();
      if (response.status == ResponseStatus.success) {
        final List<BlogList> blogs = response.obj;

        if (blogs.isEmpty) {
          emit(BlogNoData());
        } else {
          emit(BlogSuccess(blogs));
        }
      } else {
        emit(BlogFailure(errMessage: response.message ?? 'An error occurred'));
      }
    } catch (e) {
      emit(BlogFailure(errMessage: "An Error Occurred While loading data. $e"));
    }
  }

  Future<void> createBlogs(BlogCreate newBlog) async {
    emit(BlogLoading());

    try {
      var blogService = BlogService();
      var response = await blogService.createNewBlogs(newBlog);

      if (response.status == ResponseStatus.success) {
        await allBlogs();
      } else {
        emit(BlogFailure(errMessage: response.message ?? 'An error occurred'));
      }
    } catch (e) {
      emit(BlogFailure(errMessage: "An Error Occurred While loading data. $e"));
    }
  }

  // Future<void> createBlogs(BlogCreate newBlog) async {
  //   emit(BlogLoading());
  //   try {
  //     var blogService = BlogService();
  //     var response = await blogService.createNewBlogs(newBlog);
  //     if (response.status == ResponseStatus.success) {
  //       final List<BlogCreate> blogCreate = response.obj;
  //       if (blogCreate.isEmpty) {
  //         emit(BlogNoData());
  //       } else {
  //         emit(BlogSuccess(blogCreate.cast<BlogList>()));
  //       }
  //     } else {
  //       emit(BlogFailure(errMessage: response.message ?? 'An error occurred'));
  //     }
  //   } catch (e) {
  //     emit(BlogFailure(errMessage: "An Error Occurred While loading data. $e"));
  //   }
  // }
  Future<void> updateBlogs(BlogUpdate updatedBlog) async {
    emit(BlogLoading());

    try {
      var blogService = BlogService();
      var response = await blogService.updateBlog(updatedBlog);

      if (response.status == ResponseStatus.success) {
        await allBlogs();
        // emit(BlogSuccess(updatedList));
      } else {
        emit(BlogFailure(errMessage: response.message ?? 'An error occurred'));
      }
    } catch (e) {
      emit(
          BlogFailure(errMessage: "An Error Occurred While updating data. $e"));
    }
  }

  Future<void> deleteBlogs(List<BlogList> blogList, int blogId) async {
    emit(BlogLoading());

    try {
      var blogService = BlogService();
      var response = await blogService.deleteBlogs(blogList, blogId);

      if (response.status == ResponseStatus.success) {
        final List<BlogList> blogDelete = response.obj;
        emit(BlogSuccess(blogDelete.cast<BlogList>()));
      } else {
        emit(BlogFailure(errMessage: response.message ?? 'An error occurred'));
      }
    } catch (e) {
      emit(
          BlogFailure(errMessage: "An Error Occurred While deleting blog. $e"));
    }
  }
}
