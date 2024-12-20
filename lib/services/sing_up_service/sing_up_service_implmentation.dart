import 'package:ui/core/api/api_service.dart';
import 'package:ui/core/api/end_points.dart';
import 'package:ui/core/api/generic_response.dart';

class SingUpServiceImp {
  final ApiService _apiService;

  SingUpServiceImp(this._apiService);

  Future<GenericResponse> singUp(
    String fullName,
    String email,
    String password,
    String repeatPassword,
  ) async {
    try {
      Map<String, dynamic> data = {
        'fullName': fullName,
        'email': email,
        'password': password,
        'repeatPassword': repeatPassword
      };
      final response = await _apiService.makeRequest(
        ApiMethod.post,
        EndPoints.register,
        data: data,
      );

      if (response.status == ResponseStatus.fail) {
        response.message =
            'sing up ======= User name or password is incorrect, please try again';
      }
      return response;
    } catch (e) {
      return GenericResponse(
          message:
              " User name or password is incorrect, please try again sing up ======= ",
          status: ResponseStatus.fail,
          code: 500);
    }
  }
}
