import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgetPasswordFormWidget extends StatelessWidget {
  const ForgetPasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(hintText: 'Email'),
          verticalSpace(50),
          CustomButton(onPressed: () {}, title: 'Sign Up'),
        ],
      ),
    );
  }
}
