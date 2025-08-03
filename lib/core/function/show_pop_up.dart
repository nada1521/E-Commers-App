import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

void showPopUp(BuildContext context, Widget child) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        backgroundColor: AppColors.lightRed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: child,
      );
    },
  );
}
