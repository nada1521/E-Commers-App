part of 'sign_in_cubit.dart';

@immutable
abstract class SignInState {}

class SignInInitialState extends SignInState {}

class SignInSuccessState extends SignInState {
  final SignInResponseModel signInResponseModel;

  SignInSuccessState({required this.signInResponseModel});
}

class SignInFailureState extends SignInState {
  final String erroreMessag;

  SignInFailureState({required this.erroreMessag});
}

class SignInLoadingState extends SignInState {}
