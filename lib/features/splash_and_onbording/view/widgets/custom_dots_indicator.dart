import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.positionendIndex});
  final double positionendIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: positionendIndex,
      decorator: DotsDecorator(activeColor: AppColors.orange),
    );
  }
}
