import 'package:bloc/bloc.dart';

enum ButtonType { monthly, yearly }

class PricingButtonCubit extends Cubit<ButtonType> {
  PricingButtonCubit() : super(ButtonType.monthly);

  void selectMonthly() => emit(ButtonType.monthly);

  void selectYearly() => emit(ButtonType.yearly);
}
