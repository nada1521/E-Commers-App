import 'package:dio/dio.dart';
import 'package:e_commerce/core/errors/error_handler.dart';
import 'package:e_commerce/core/errors/failure.dart';
import 'package:e_commerce/core/networking/api_result.dart';
import 'package:e_commerce/features/auth/sign_in/data/model/sign_in_request_model.dart';
import 'package:e_commerce/features/auth/sign_in/data/model/sign_in_response_model.dart';

import '../service/signin_api_service.dart';

class SignInRepo {
  final SignInApiService signInApiService;

  SignInRepo({required this.signInApiService});
  Future<ApiResult<SignInResponseModel>> signIn(
    SignInRequestModel signInRequest,
  ) async {
    try {
      var respons = await signInApiService.signIn(signInRequest);
      return ApiResult.success(respons);
    }  on DioException catch (dioError) {
      final errorMsg = AuthErrorHandler.extractSingleMessage(
        dioError.response?.data,
      );
      return ApiResult.failure(FailureServer(errorMsg) );
    } catch (error) {
      return ApiResult.failure(FailureServer('حدث خطأ غير متوقع'));
    }
  }
}
