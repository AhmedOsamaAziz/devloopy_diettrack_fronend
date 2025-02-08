import 'package:dio/dio.dart';
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
        code: 200,
        obj: blogs,
        status: ResponseStatus.success,
      );
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
        ApiMethod.post,
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
        ApiMethod.put,
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

  Future<GenericResponse> deleteBlogs(
      List<BlogList> blogList, int blogId) async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.delete,
        '${EndPoints.blog}/$blogId', // إرسال طلب حذف باستخدام blogId
      );

      if (response.status == ResponseStatus.success) {
        // حذف المدونة من القائمة المحلية
        blogList.removeWhere((blog) => blog.id == blogId);

        return GenericResponse(
          status: ResponseStatus.success,
          obj: blogList, //     المحدثة
          code: 200,
        );
      } else {
        return GenericResponse(
          status: ResponseStatus.fail,
          message: response.message ?? 'Failed to delete blog',
          code: response.code,
        );
      }
    } on DioException catch (e) {
      return GenericResponse(
        status: ResponseStatus.fail,
        message: 'Network error: ${e.message}',
        code: 500,
      );
    } on Exception catch (e) {
      // معالجة أخطاء عامة
      return GenericResponse(
        status: ResponseStatus.fail,
        message: 'An error occurred: $e',
        code: 500,
      );
    }
  }
}
