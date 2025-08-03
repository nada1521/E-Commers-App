import 'package:bloc/bloc.dart';
import 'package:e_commerce/core/networking/api_result.dart';
import 'package:flutter/material.dart';
import '../../data/repos/home_repos.dart';
part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this.homeRepos) : super(CategoryInitialState());
  final HomeRepos homeRepos;
  void getAllCategories() async {
    emit(CategoryLoadingState());
    final respnse = await homeRepos.getAllCategories();
    respnse.when(
      success: (respnse) {
        emit(CategorySuccessState(respnse));
      },
      failure: (failure) {
        emit(CategorFailureState(failure.errorMessage));
      },
    );
  }
}
