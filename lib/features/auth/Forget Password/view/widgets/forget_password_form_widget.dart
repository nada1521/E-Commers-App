import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../../core/function/navigation.dart';
import '../../../../../core/router/app_router_path.dart';

class ForgetPasswordFormWidget extends StatelessWidget {
  const ForgetPasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(hintText: 'Email'),
          verticalSpace(50),
          CustomButton(
            onPressed: () {
              navigationPushNamed(
                context,
                AppRouterPath.kVerificationCodeScreen,
              );
            },
            title: Text('Reset', style: AppTextStyle.semyBoldFontSize18wight),
          ),
        ],
      ),
    );
  }
}
