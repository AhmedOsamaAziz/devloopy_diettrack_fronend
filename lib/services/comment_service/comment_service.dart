import 'package:ui/core/api/generic_response.dart';

abstract class CommentService {
  Future<GenericResponse> getBaseComment();
  Future<GenericResponse> createComment();
  Future<GenericResponse> readComment();
}
