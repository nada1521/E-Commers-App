import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccuntSignInText extends StatelessWidget {
  const AlreadyHaveAnAccuntSignInText({super.key, this.navigationPath});
  final Function? navigationPath;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Already have an account ? ",
        style: AppTextStyle.regularFontSize12Grey,
        children: [
          TextSpan(
            text: "Sign In",
            style: AppTextStyle.mediumFontSize12Orang,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
              navigationPath??  navigationpushReplacemen(context, AppRouterPath.kSignInScreen);
              },
          ),
        ],
      ),
    );
  }
}
