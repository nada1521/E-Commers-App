import 'package:dio/dio.dart';
import 'package:e_commerce/features/auth/sign_in/data/repos/sign_in_repo.dart';
import 'package:e_commerce/features/auth/sign_in/data/service/signin_api_service.dart';
import 'package:e_commerce/features/auth/sign_up/data/repos/sign_up_repo.dart';
import 'package:e_commerce/features/auth/sign_up/data/service/sign_up_api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<SignUpRepo>(
    SignUpRepo(signUpApiService: SignUpApiService(Dio())),
  );
  getIt.registerSingleton<SignInRepo>(
    SignInRepo(signInApiService: SignInApiService(Dio())),
  );
}
