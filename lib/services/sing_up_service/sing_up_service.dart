import 'package:ui/model/sing_up_model/sing_up.dart';

abstract class SingUpService {
  Future<SingUpModel>? singUp({
    required fullName,
    required email,
    required password,
    required repeatPassword,
  });
}
