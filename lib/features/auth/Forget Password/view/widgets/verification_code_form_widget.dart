import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/Forget%20Password/view/widgets/code_continers.dart';
import 'package:e_commerce/features/auth/Forget%20Password/view/widgets/did_not_get_the_code_yet_resend.dart';
import 'package:flutter/widgets.dart';

class VerificationCodeFormWidget extends StatelessWidget {
  const VerificationCodeFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            verticalSpace(250),
            Text('Verification Code', style: AppTextStyle.boldFontSize20Orang),
            verticalSpace(10),
            Text(
              'You need to enter 4-digit code we send to your Email Addres.',
              style: AppTextStyle.regularFontSize12Grey,
              textAlign: TextAlign.center,
            ),
            verticalSpace(60),
            CodeContainers(),
            verticalSpace(70),
            CustomButton(
              onPressed: () {
                navigationPushNamed(
                  context,
                  AppRouterPath.kCreateNewPasswordScreen,
                );
              },
              title: Text(
                'Confirm',
                style: AppTextStyle.semyBoldFontSize18wight,
              ),
            ),
            verticalSpace(30),
            DidNotGetTheCodeYetResend(),
          ],
        ),
      ),
    );
  }
}
