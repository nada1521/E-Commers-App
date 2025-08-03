import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/networking/api_result.dart';
import 'package:e_commerce/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:e_commerce/features/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:e_commerce/features/auth/sign_up/data/repos/sign_up_repo.dart';
import 'package:flutter/widgets.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.signUpRepo) : super(SignUpInitial());
  final SignUpRepo signUpRepo;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phonNumberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  Future<void> emitSignUpState(context) async {
    if (signUpFormKey.currentState != null &&
        signUpFormKey.currentState!.validate()) {
      emit(SignUpLoadingState());

      var respons = await signUpRepo.signUp(
        SignUpRequestBody(
          confirmPassword: confirmPasswordController.text,
          phonNumber: phonNumberController.text,
          password: passwordController.text,
          email: emailController.text,
          name: nameController.text,
        ),
      );
      respons.when(
        success: (respons) async {
          emit(SignUpSuccessState(signUpResponseModel: respons));
        },
        failure: (error) {
          emit(SignUpFailureState(erroreMessag: error.errorMessage));
        },
      );
    }
  }
}
