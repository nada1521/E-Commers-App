import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/networking/api_result.dart';
import 'package:e_commerce/features/Home/Home/data/repos/home_repos.dart';
import 'package:flutter/material.dart';

import '../../data/models/product_response_model.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.homeRepos) : super(ProductInitialState());
  final HomeRepos homeRepos;
  void getAllProducts() async {
    emit(ProductLoadingState());
    final result = await homeRepos.getAllProducts();
    result.when(
      success: (products) {
        emit(ProductSuccessState(products: products));
      },
      failure: (failure) {
        emit(ProductFailureState(errorMessage: failure.errorMessage));
      },
    );
  }

  Future<void> getProductsByCategory(String category) async {
    emit(ProductLoadingState());
    final result = await homeRepos.getProductsByCategory(category);
    result.when(
      success: (products) => emit(ProductSuccessState(products: products)),
      failure: (error) =>
          emit(ProductFailureState(errorMessage: error.errorMessage)),
    );
  }
String? selectedCategory;
String? get selectedCategorys => selectedCategory;
void selectCategory(String category) {
  selectedCategory = category;
  getProductsByCategory(category);
  emit(ProductCategorySelectedState()); 
}

}
