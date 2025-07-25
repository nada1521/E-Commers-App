import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_font_weight.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  static TextStyle semyBoldFontSize18wight = TextStyle(
    fontSize: 18,
    color: AppColors.white,
    fontWeight: AppFontWeight.semiBold,
  );
   static TextStyle regularFontSize14Grey = TextStyle(
    fontSize: 14,
    color: AppColors.grey,
    fontWeight: AppFontWeight.regular,
  );
   static TextStyle mediumFontSize14Orang = TextStyle(
    fontSize: 14,
    color: AppColors.orange,
    fontWeight: AppFontWeight.medium,
  );
    static TextStyle boldFontSize24white = TextStyle(
    fontSize: 24,
    color: AppColors.white,
    fontWeight: AppFontWeight.bold,
  );
}
