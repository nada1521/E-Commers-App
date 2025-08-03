import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:e_commerce/core/errors/failure.dart';
import 'package:e_commerce/core/networking/api_result.dart';
import 'package:e_commerce/features/Home/Home/data/models/product_response_model.dart';
import 'package:e_commerce/features/Home/Home/data/service/home_api_service.dart';

class HomeRepos {
  final HomeApiService homeApiService;

  HomeRepos({required this.homeApiService});
  
  Future<ApiResult<List< ProductResponseModel>>> getAllProducts(
   
  ) async { 
    try {
      var respons = await homeApiService.getAllProducts();
      return ApiResult.success(respons);
    } on DioException catch (dioError) {
      return ApiResult.failure(FailureServer.fromDioException(dioError));
    }
     catch (error) {
      return ApiResult.failure(FailureServer('حدث خطأ غير متوقع'));
    }
  }
   Future<ApiResult<List<String>>> getAllCategories(
   
  ) async { 
    try {
      var respons = await homeApiService.getAllCategories();
      return ApiResult.success(respons);
    } on DioException catch (dioError) {
      return ApiResult.failure(FailureServer.fromDioException(dioError));
    }
     catch (error) {
      log(error.toString());
      return ApiResult.failure(FailureServer(error.toString()));
    }
  }

  Future<ApiResult<List<ProductResponseModel>>> getProductsByCategory(
   String category
  ) async { 
    try {
      var respons = await homeApiService.getProductsByCategory(category);
      return ApiResult.success(respons);
    } on DioException catch (dioError) {
      return ApiResult.failure(FailureServer.fromDioException(dioError));
    }
     catch (error) {
      log(error.toString());
      return ApiResult.failure(FailureServer(error.toString()));
    }
  }
}
