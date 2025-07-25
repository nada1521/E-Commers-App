import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_font_weight.dart';
import 'package:flutter/widgets.dart';

abstract class AppTextStyle {
  static TextStyle semyBoldFontSize18wight = TextStyle(
    fontSize: 14,
    color: AppColors.white,
    fontWeight: AppFontWeight.semiBold,
  );
  static TextStyle regularFontSize12Grey = TextStyle(
    fontSize: 12,
    color: AppColors.grey,
    fontWeight: AppFontWeight.regular,
  );
  static TextStyle mediumFontSize12Orang = TextStyle(
    fontSize: 12,
    color: AppColors.orange,
    fontWeight: AppFontWeight.medium,
  );
  static TextStyle boldFontSize20Orang = TextStyle(
    fontSize: 20,
    color: AppColors.orange,
    fontWeight: AppFontWeight.bold,
  );
  static TextStyle regularFontSize14Greay = TextStyle(
    fontSize: 14,
    color: AppColors.grey,
    fontWeight: AppFontWeight.regular,
  );
}
