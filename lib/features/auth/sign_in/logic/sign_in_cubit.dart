import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/networking/api_result.dart';
import 'package:e_commerce/features/auth/sign_in/data/model/sign_in_request_model.dart';
import 'package:e_commerce/features/auth/sign_in/data/model/sign_in_response_model.dart';
import 'package:e_commerce/features/auth/sign_in/data/repos/sign_in_repo.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.signInRepo) : super(SignInInitialState());
  final SignInRepo signInRepo;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> signInFormKey = GlobalKey();

  Future<void> emitSignInState(context) async {
    if (signInFormKey.currentState != null &&
        signInFormKey.currentState!.validate()) {
      emit(SignInLoadingState());
      final respons = await signInRepo.signIn(
        SignInRequestModel(
          email: emailController.text,
          password: passwordController.text,
        ),
      );
      respons.when(
        success: (respons) async {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setBool('isSignedIn', true);
          await prefs.setString('token', respons.token);
           emit(SignInSuccessState(signInResponseModel: respons));
         
        },
        failure: (error) =>
            emit(SignInFailureState(erroreMessag: error.errorMessage)),
      );
    }
  }
}
