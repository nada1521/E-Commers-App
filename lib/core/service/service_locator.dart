import 'package:dio/dio.dart';
import 'package:e_commerce/features/Home/Home/data/repos/home_repos.dart';
import 'package:e_commerce/features/Home/Home/data/service/home_api_service.dart';
import 'package:e_commerce/features/auth/sign_in/data/repos/sign_in_repo.dart';
import 'package:e_commerce/features/auth/sign_in/data/service/signin_api_service.dart';
import 'package:e_commerce/features/auth/sign_up/data/repos/sign_up_repo.dart';
import 'package:e_commerce/features/auth/sign_up/data/service/sign_up_api_service.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

void setupGetIt() async{
 final  dio = Dio();

  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      error: true,
    ),
  );

  getIt.registerSingleton<SignUpRepo>(
    SignUpRepo(signUpApiService: SignUpApiService(dio)),
  );
  getIt.registerSingleton<SignInRepo>(
    SignInRepo(signInApiService: SignInApiService(dio)),
  );
    getIt.registerSingleton<HomeApiService>(
    HomeApiService( dio),
  );
  getIt.registerSingleton<HomeRepos>(HomeRepos(homeApiService: getIt.get<HomeApiService>()));

}
