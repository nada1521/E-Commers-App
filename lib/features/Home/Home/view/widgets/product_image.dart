import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/function/navigation.dart';
import '../../../../../core/router/app_router_path.dart';
import '../../data/models/product_response_model.dart';

class ProductImageWidget extends StatefulWidget {
  const ProductImageWidget({super.key, required this.product});
  final ProductResponseModel product;

  @override
  State<ProductImageWidget> createState() => _ProductImageWidgetState();
}

class _ProductImageWidgetState extends State<ProductImageWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            navigationPushNamed(context, AppRouterPath.kProductDetailsScreen, extra: widget.product);
          },
          child: Container(
            height: 280.h,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20.h, bottom: 10.h),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.product.image),
                fit: BoxFit.cover,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(40.r),
            ),
          ),
        ),
        Positioned(
          left: 138.w,
          height: 130.h,
          child: Container(
            width: 40.w,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: IconButton(
              isSelected: isFavorite,
              selectedIcon: Icon(
                Icons.favorite,
                color: AppColors.orange,
                size: 24.sp,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                color: AppColors.orange,
                size: 24.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
