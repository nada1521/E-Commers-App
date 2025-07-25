import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class GetStartedText extends StatelessWidget {
  const GetStartedText({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          verticalSpace(140),
          Text('Get Started', style: AppTextStyle.boldFontSize20Orang),
          Text(
            'Enter your details below',
            style: AppTextStyle.regularFontSize12Grey,
          ),
          verticalSpace(50),
        ],
      ),
    );
  }
}
