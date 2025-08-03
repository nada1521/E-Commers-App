
import 'package:dio/dio.dart';
import 'package:e_commerce/core/networking/api_constans.dart';
import 'package:e_commerce/features/auth/sign_in/data/model/sign_in_request_model.dart';
import 'package:e_commerce/features/auth/sign_in/data/model/sign_in_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'signin_api_service.g.dart';

@RestApi(baseUrl: ApiConstans.beasURL)
abstract class SignInApiService {
  factory SignInApiService(Dio dio) = _SignInApiService;

  @POST(ApiConstans.signIn)
  Future<SignInResponseModel> signIn(
    @Body() SignInRequestModel signInRequestModel,
  );
}
