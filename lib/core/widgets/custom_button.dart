import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.title});
  final Function() onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:  AppColors.orange
      ),
      child: ElevatedButton(onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        
      ),
       child: Text(title, style: AppTextStyle.semyBoldFontSize18wight)),
    );
  }
}
