import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/services/sing_up_service/sing_up_service_implmentation.dart';

part 'singup_state.dart';

class SingupCubit extends Cubit<SingupState> {
  final SingUpServiceImp singUpService;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();

  SingupCubit(this.singUpService) : super(SingupInitial());

  void singUp() async {
    emit(SingupLoading());
    try {
      final response = await singUpService.singUp(
        fullNameController.text,
        emailController.text,
        passwordController.text,
        repasswordController.text,
      );
      if (response.status == ResponseStatus.success) {
        emit(SingupSuccess());
      } else {
        emit(SingupFailure(message: response.message ?? 'Sign-up failed'));
      }
    } on DioException catch (e) {
      emit(SingupFailure(message: e.message ?? "Network error occurred"));
    } catch (e) {
      emit(const SingupFailure(message: "An unexpected error occurred"));
    }
  }
}
