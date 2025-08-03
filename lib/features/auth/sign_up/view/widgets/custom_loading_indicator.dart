import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
    this.color,
    this.height,
    this.width, this.verticalSpace,
  });
  final Widget? verticalSpace;
  final Color? color;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace?? SizedBox.shrink(),
        SizedBox(
          height: height ?? 40.h,
          width: width ?? 40.w,
          child: Center(
            child: CircularProgressIndicator(color: color ?? AppColors.white),
          ),
        ),
      ],
    );
  }
}
