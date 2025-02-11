
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';
import 'package:ui/model/auth/login_model/auth_model.dart';

class LoginService {
  final ApiService _apiService;

  LoginService(this._apiService);

  Future<GenericResponse> login(
    String email,
    String password,
  ) async {
    try {
      Map<String, dynamic> data = {
        'email': email,
        'password': password,
      };

      final response = await _apiService.makeRequest(
        ApiMethod.post,
        EndPoints.login,
        data: data,
      );

      if (response.status == ResponseStatus.fail) {
        response.message =
            'User name or password is incorrect, please try again';
      } else {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);

        if (response.obj is Map<String, dynamic>) {
          final authData = AuthModel.fromJson(response.obj);

          await prefs.setString("access_token", authData.accessToken);
          await prefs.setString("refresh_token", authData.refreshToken);
        }

        bool firstLogin = prefs.getBool('firstLogin') ?? true;
        if (firstLogin) {
          await prefs.setBool('firstLogin', false);
        }
      }

      return response;
    } catch (e) {
      return GenericResponse(
          message: "User name or password is incorrect, please try again",
          status: ResponseStatus.fail,
          code: 500);
    }
  }
}
