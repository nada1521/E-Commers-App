import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/Home/Home/logic/Product/product_cubit.dart';
import 'package:e_commerce/features/Home/Home/logic/category/category_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../auth/sign_up/view/widgets/custom_loading_indicator.dart';
import 'category_item.dart';

class SearchAndCatigoryListView extends StatelessWidget {
  const SearchAndCatigoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'Search',
              prefixIcon: Icons.search,
              onChanged: (value) {},
            ),
            verticalSpace(20),
            SizedBox(
              height: 60.h,
              child: BlocBuilder<CategoryCubit, CategoryState>(
                buildWhen: (previous, current) =>
                    current is CategoryLoadingState ||
                    current is CategorySuccessState ||
                    current is CategorFailureState,
                builder: (context, state) {
                  //عشان يبنى الودجيت context.watch
                  final selectedCategory = context
                      .watch<ProductCubit>()
                      .selectedCategory;
                  if (state is CategorySuccessState) {
                    final categories = state.categories;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        final category = categories[index];
                        final isSelected = category == selectedCategory;

                        return CategoryItem(
                          isSelected: isSelected,
                          onTap: () {
                            context.read<ProductCubit>().selectCategory(
                              category,
                            );
                          },
                          category: category,
                        );
                      },
                    );
                  } else if (state is CategorFailureState) {
                    return Center(child: Text(state.errorMessage));
                  }
                  return const CustomLoadingIndicator();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
