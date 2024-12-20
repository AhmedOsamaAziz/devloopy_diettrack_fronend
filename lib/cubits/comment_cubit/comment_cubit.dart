import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/comments/comment_base.dart';
import 'package:ui/model/comments/comment_create.dart';
import 'package:ui/model/comments/comment_read.dart';
import 'package:ui/services/comment_service/comment_service_implmentation.dart';

 
part 'comment_state.dart';

class CommentCubit extends Cubit<CommentState> {
  CommentCubit() : super(CommentInitial());

  Future<void> getComment() async {
    emit(CommentLoading());
    try {
      var commentServise = CommentServiceImplmentation();

      var response = await commentServise.getBaseComment();

      if (response.status == ResponseStatus.success) {
        final List<CommentBase> commentBase = response.obj;

        emit(CommentSuccess());
      }
    } catch (e) {
      emit(const CommentFailur(errMessage: 'Sorry No comment Now ,,'));
    }
  }

  Future<void> createComment() async {
    emit(CommentLoading());
    try {
      var commentServise = CommentServiceImplmentation();

      var response = await commentServise.createComment();

      if (response.status == ResponseStatus.success) {
        final List<CommentCreate> commentCreate = response.obj;

        emit(CommentSuccess());
      }
    } catch (e) {
      emit(const CommentFailur(errMessage: 'Sorry No comment Create ,,'));
    }
  }

  Future<void> readComment() async {
    emit(CommentLoading());
    try {
      var commentServise = CommentServiceImplmentation();

      var response = await commentServise.readComment();

      if (response.status == ResponseStatus.success) {
        final List<CommentRead> commentRead = response.obj;

        emit(CommentSuccess());
      }
    } catch (e) {
      emit(const CommentFailur(errMessage: 'Sorry No comment Read Now...,'));
    }
  }
}
