import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../../core/networking/api_constans.dart';
import '../models/sign_up_request_body.dart';
import '../models/sign_up_response_model.dart';
part '../repos/sign_up_api_service.g.dart';

@RestApi(baseUrl: ApiConstans.beasURL)
abstract class SignUpApiService {
  factory SignUpApiService(Dio dio) = _SignUpApiService;
  @POST(ApiConstans.signUp)
  Future<SignUpResponseModel> signUp(
    @Body() SignUpRequestBody signUpRequestBody,
  );
} 
