part of 'product_cubit.dart';

@immutable
abstract class ProductState {}

class ProductInitialState extends ProductState {}

class ProductLoadingState extends ProductState {}


class ProductSuccessState extends ProductState {
  final List<ProductResponseModel> products;

  ProductSuccessState({required this.products});
}

class ProductFailureState extends ProductState {
  final String errorMessage;

  ProductFailureState({required this.errorMessage});
}

class ProductCategorySelectedState extends ProductState {}
