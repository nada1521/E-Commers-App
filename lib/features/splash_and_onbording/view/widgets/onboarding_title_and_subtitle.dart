import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingTitleAndSubTitle extends StatelessWidget {
  const OnboardingTitleAndSubTitle({
    super.key,
    required this.title,
    required this.subTitle,
    required this.svgImage,
  });
  final String title;
  final String subTitle;
  final String svgImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Column(
        children: [
          verticalSpace(130),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SvgPicture.asset(svgImage, height: 400.h, width: 400.w),
          ),
          verticalSpace(15),
          Text(title, style: AppTextStyle.boldFontSize20Orang),
          verticalSpace(16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              subTitle,
              style: AppTextStyle.regularFontSize12Grey,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
