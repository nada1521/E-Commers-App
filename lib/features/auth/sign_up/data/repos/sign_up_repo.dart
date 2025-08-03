import 'package:dio/dio.dart';
import 'package:e_commerce/core/errors/error_handler.dart';
import 'package:e_commerce/core/errors/failure.dart';
import 'package:e_commerce/core/networking/api_result.dart';
import 'package:e_commerce/features/auth/sign_up/data/models/sign_up_request_body.dart';
import 'package:e_commerce/features/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:e_commerce/features/auth/sign_up/data/service/sign_up_api_service.dart';

class SignUpRepo {
  final SignUpApiService signUpApiService;

  SignUpRepo({required this.signUpApiService});
  
  Future<ApiResult<SignUpResponseModel>> signUp(
    SignUpRequestBody signUpRequest,
  ) async {
    try {
      var respons = await signUpApiService.signUp(signUpRequest);
      return ApiResult.success(respons);
    } on DioException catch (dioError) {
      final errorMsg = AuthErrorHandler.extractSingleMessage(
        dioError.response?.data,
      );
      return ApiResult.failure(FailureServer(errorMsg) );
    } catch (error) {
      return ApiResult.failure(FailureServer('حدث خطأ غير متوقع'));
    }
  }
}
