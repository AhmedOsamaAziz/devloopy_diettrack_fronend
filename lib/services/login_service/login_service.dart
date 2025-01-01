import 'package:ui/model/general/login_model.dart';

abstract class LoginService {
  Future<LoginModel>? login({required email, required password});
}
