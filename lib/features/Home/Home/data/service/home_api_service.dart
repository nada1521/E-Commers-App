import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import '../../../../../core/networking/api_constans.dart';
import '../models/product_response_model.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstans.beasUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio, {String baseUrl}) = _HomeApiService;

  @GET(ApiConstans.products)
  Future<List<ProductResponseModel>> getAllProducts();

  @GET(ApiConstans.categories)
  Future<List<String>> getAllCategories();

  @GET('products/category/{category}')
  Future<List<ProductResponseModel>> getProductsByCategory(
    @Path('category') String category,
  );
}
