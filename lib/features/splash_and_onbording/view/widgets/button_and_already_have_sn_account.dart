import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/splash_and_onbording/view/widgets/already_have_an_accunt_sign_in.dart';
import 'package:flutter/material.dart';

class ButtonAndAlreadyHaveAnAccount extends StatelessWidget {
  const ButtonAndAlreadyHaveAnAccount({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        verticalSpace(32),
        CustomButton(onPressed: onPressed, title: title),
        verticalSpace(23),
        AlreadyHaveAnAccuntSignInText(),
      ],
    );
  }
}
