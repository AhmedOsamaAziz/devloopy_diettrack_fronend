part of 'singup_cubit.dart';

sealed class SingupState extends Equatable {
  const SingupState();

  @override
  List<Object> get props => [];
}

final class SingupInitial extends SingupState {}

final class SingupLoading extends SingupState {}

final class SingupSuccess extends SingupState {}

final class SingupFailure extends SingupState {
  final String message;

  const SingupFailure({required this.message});

  @override
  List<Object> get props => [message];
}
