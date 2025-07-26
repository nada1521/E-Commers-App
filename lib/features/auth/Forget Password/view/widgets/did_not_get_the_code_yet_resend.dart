import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DidNotGetTheCodeYetResend extends StatelessWidget {
  const DidNotGetTheCodeYetResend({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "Didn't get the code yet ? ",
        style: AppTextStyle.regularFontSize12Grey,
        children: [
          TextSpan(
            text: " Resend (0:35)",
            style: AppTextStyle.mediumFontSize12Orang,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                },
          ),
        ],
      ),
    );
  }
}
