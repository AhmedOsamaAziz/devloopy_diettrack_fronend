import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/comments/comment_base.dart';
import 'package:ui/model/comments/comment_create.dart';
import 'package:ui/model/comments/comment_read.dart';
import 'package:ui/services/comment_service/comment_service.dart';

class CommentServiceImplmentation implements CommentService {
  @override
  Future<GenericResponse> readComment() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.comment,
      );

      List<CommentRead> commentRead = (response.obj);
      // .map((testimoniaJson) => CommentBase.fromJson(testimoniaJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: commentRead,
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

  @override
  Future<GenericResponse> createComment() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.comment,
      );

      List<CommentCreate> createComment = (response.obj);
      // .map((testimoniaJson) => CommentBase.fromJson(testimoniaJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: createComment,
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

  @override
  Future<GenericResponse> getBaseComment() async {
    try {
      var apiService = ApiService();
      final response = await apiService.makeRequest(
        ApiMethod.get,
        EndPoints.comment,
      );

      List<CommentBase> commentBase = (response.obj);
      // .map((testimoniaJson) => CommentBase.fromJson(testimoniaJson))
      // .toList();

      return GenericResponse(
        code: 200,
        obj: commentBase,
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
}
