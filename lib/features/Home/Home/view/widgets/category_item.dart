import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });
  final String category;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.r),
        margin: EdgeInsets.only(right: 15.w),
        decoration: BoxDecoration(
          color: isSelected == false ? AppColors.lightGrey : AppColors.orange,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Center(
          child: Text(
            category,
            style: AppTextStyle.mediumFontSize12Orang.copyWith(
              fontSize: 15,
              color: isSelected == false ? AppColors.orange : AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
