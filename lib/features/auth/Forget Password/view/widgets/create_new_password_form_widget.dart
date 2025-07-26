import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordFormWidget extends StatelessWidget {
  const CreateNewPasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            verticalSpace(250),
            Text(
              'Create New Password',
              style: AppTextStyle.boldFontSize20Orang,
            ),
            verticalSpace(10),
            Text(
              'Create a new password, please don’t forget this one too.',
              style: AppTextStyle.regularFontSize12Grey,
            ),
            verticalSpace(30),
            CustomTextFormField(
              hintText: 'Old Password',
              suffixIcon: Icon(Icons.visibility),
            ),
            CustomTextFormField(
              hintText: 'New Password',
              suffixIcon: Icon(Icons.visibility),
            ),
            verticalSpace(40),
            CustomButton(onPressed: () {}, title: 'Create New Password'),
          ],
        ),
      ),
    );
  }
}
