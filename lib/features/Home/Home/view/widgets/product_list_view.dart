import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/features/Home/Home/logic/Product/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../auth/sign_up/view/widgets/custom_loading_indicator.dart';
import 'product_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (previous, current) =>
          current is ProductLoadingState ||
          current is ProductFailureState ||
          current is ProductSuccessState,
      builder: (context, state) {
        if (state is ProductSuccessState) {
          return SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => ProductItem(product: state.products[index]),
              childCount: state.products.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
          );
        } else if (state is ProductFailureState) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.errorMessage)),
          );
        }
        return SliverToBoxAdapter(
          child: CustomLoadingIndicator(
            height: 85,
            verticalSpace: verticalSpace(300.h),
            color: AppColors.orange,
          ),
        );
      },
    );
  }
}
