part of 'category_cubit.dart';

@immutable
abstract class CategoryState {}

class CategoryInitialState extends CategoryState {}

class CategoryLoadingState extends CategoryState {}

class CategorySuccessState extends CategoryState {
  final List<String> categories;

  CategorySuccessState(this.categories);
}

class CategorFailureState extends CategoryState {
  final String errorMessage;

  CategorFailureState(this.errorMessage);
}
