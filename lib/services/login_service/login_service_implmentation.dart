import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';

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
