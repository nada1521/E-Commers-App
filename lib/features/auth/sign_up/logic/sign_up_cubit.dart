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
  Future<void> emitSignUpState(SignUpRequestBody signUpRequest) async {
    emit(SignUpLoadingState());
    final respons = await signUpRepo.signUp(signUpRequest);
    respons.when(
      success: (respons) =>
          emit(SignUpSuccessState(signUpResponseModel: respons)),
      failure: (error) =>
          emit(SignUpFailureState(erroreMessag: error.errorMessage)),
    );
  }
}
