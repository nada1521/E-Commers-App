import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/splash_and_onbording/view/widgets/already_have_an_accunt_sign_in.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          child: Column(
            children: [
              CustomTextFormField(hintText: 'Name'),
              CustomTextFormField(hintText: 'Email'),
              CustomTextFormField(hintText: 'Password'),
              CustomTextFormField(hintText: 'Confirm Password'),
              verticalSpace(50),
              CustomButton(onPressed: () {}, title: 'Sign Up'),
              verticalSpace(50),
              AlreadyHaveAnAccuntSignInText(),
            ],
          ),
        ),
      ),
    );
  }
}
