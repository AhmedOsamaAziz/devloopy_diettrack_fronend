part of 'testimonils_cubit.dart';

sealed class TestimonilsState extends Equatable {
  const TestimonilsState();

  @override
  List<Object> get props => [];
}

final class TestimonilsInitial extends TestimonilsState {}

final class TestimonilsLoading extends TestimonilsState {}

final class TestimonilsSuccess extends TestimonilsState {
  final List<TestimonialBase> testimonials;
  const TestimonilsSuccess({required this.testimonials});
}

final class TestimonilFailur extends TestimonilsState {
  final String errMessage;

  const TestimonilFailur({required this.errMessage});
}
