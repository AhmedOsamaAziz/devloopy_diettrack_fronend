import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/blog/blog_create.dart';
import 'package:ui/model/blog/blog_list.dart';
import 'package:ui/model/blog/blog_update.dart';

class BlogService {
  BlogService();

  Future<GenericResponse> getAllBlogs() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.blog,
      );

      List<BlogList> blogs = (response.obj as List)
          .map((blogJson) => BlogList.fromJson(blogJson))
          .toList();

      return GenericResponse(
          status: ResponseStatus.success, obj: blogs, code: 200);
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }

  Future<GenericResponse> createNewBlogs() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.blog,
      );

      List<BlogCreate> blogCreate = response.obj;

      return GenericResponse(
          status: ResponseStatus.success, obj: blogCreate, code: 200);
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }

  Future<GenericResponse> updatBlogs() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.blog,
      );

      List<BlogUpdate> blogCreate = response.obj;

      return GenericResponse(
          status: ResponseStatus.success, obj: blogCreate, code: 200);
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }

  Future<GenericResponse> getRecentBlogs() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.blogRecent,
      );

      List<BlogList> blogs = (response.obj['items'] as List)
          .map((blogJson) => BlogList.fromJson(blogJson))
          .toList();

      return GenericResponse(
          status: ResponseStatus.success, obj: blogs, code: 200);
    } on Exception catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: e.toString(),
        code: 500,
      );
    }
  }

  GenericResponse deleteBlogs(List<BlogList> blogList, int blogId) {
    try {
      blogList.removeWhere((blog) => blog.id == blogId);

      return GenericResponse(
        status: ResponseStatus.success,
        message: "Blog deleted successfully",
        obj: blogList,
        code: 200,
      );
    } catch (e) {
      // Returning failure response
      return GenericResponse(
        status: ResponseStatus.fail,
        message: "Failed to delete blog: $e",
        obj: null,
        code: 500,
      );
    }
  }
}

// import 'package:ui/core/api/generic_response.dart';
// import 'package:ui/model/blog/blog_list.dart';
// abstract class BlogService {
//   Future<GenericResponse> getBlogList();
//   Future<GenericResponse> getRecentBlogs();
//   Future<GenericResponse> createNewBlogs();
//   Future<GenericResponse> updatBlogs();
//   Future<GenericResponse> deleteBlogs(List<BlogList> blogList, int blogId);
// }
