import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountSignUp extends StatelessWidget {
  const DontHaveAnAccountSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Don't have an account? ",
        style: AppTextStyle.regularFontSize12Grey,
        children: [
          TextSpan(
            text: "Sign Up",
            style: AppTextStyle.mediumFontSize12Orang,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                navigationpushReplacemen(context, AppRouterPath.kSignUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
