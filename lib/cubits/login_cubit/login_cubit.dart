import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/services/login_service/login_service_implmentation.dart';
import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginService loginService;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginCubit(this.loginService) : super(LoginInitial());

  void login() async {
    emit(LoginLoading());
    try {
      final response = await loginService.login(
          emailController.text, passwordController.text);
      if (response.status == ResponseStatus.success) {
        emit(LoginSuccess());
      } else {
        emit(LoginError(response.message!));
      }
    } on DioException catch (e) {
      emit(LoginError(e.message ?? "An error occurred"));
    } catch (e) {
      emit(LoginError("An unexpected error occurred"));
    }
  }
}
