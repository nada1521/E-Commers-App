import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/features/auth/Forget%20Password/view/widgets/forget_password_form_widget.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              verticalSpace(200),
              Text(
                'Reset your Password',
                style: AppTextStyle.boldFontSize20Orang,
              ),
              verticalSpace(20),
              Text(
                'We need your email addres so we can send you the password reset code.',
                style: AppTextStyle.regularFontSize12Grey,
                textAlign: TextAlign.center,
              ),
              verticalSpace(80),
              ForgetPasswordFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
