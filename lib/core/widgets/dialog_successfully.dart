
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../function/navigation.dart';
import '../helper/spacing.dart';
import '../router/app_router_path.dart';
import '../utils/app_colors.dart';
import '../utils/app_font_weight.dart';
import '../utils/app_text_style.dart';
import 'custom_button.dart';

class DialogSuccessfully extends StatelessWidget {
  const DialogSuccessfully({super.key, required this.title, required this.subTitle});
  final String title ;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(70),
              Text(
                // "Create Account Successfully",
                title,
                style: AppTextStyle.boldFontSize20Orang.copyWith(
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),
              verticalSpace(10),
              Text(
                // "Please press sign in to go to home screen",
                subTitle,
                textAlign: TextAlign.center,
                style: AppTextStyle.regularFontSize14Greay.copyWith(
                  fontWeight: AppFontWeight.bold,
                ),
              ),
              verticalSpace(30),
              CustomButton(
                onPressed: () {
                  navigationpushReplacemen(
                    context,
                    AppRouterPath.kSignInScreen,
                  );
                },
                borderRadius: BorderRadius.circular(18),
                color: AppColors.maroon,
                title: Text(
                  "Sign In",
                  style: AppTextStyle.semyBoldFontSize18wight.copyWith(
                    fontSize: 20.sp,
                  ),
                ),
              ),
              verticalSpace(40),
            ],
          ),
        ),
        Positioned(
          top: -50,
          child: SizedBox(
            height: 88,
            width: 88,
            child: CircleAvatar(
              backgroundColor: AppColors.lightRed,
              child: Icon(Icons.check, size: 70, color: AppColors.white),
            ),
          ),
        ),
      ],
    );
  }
}