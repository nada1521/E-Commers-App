import 'package:flutter/material.dart';
import '../../../../../core/function/navigation.dart';
import '../../../../../core/router/app_router_path.dart';
import '../../../../../core/utils/app_text_style.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () => navigationPushNamed(
          context,
          AppRouterPath.kForgetPasswordScreen,
        ),
        child: Text(
          'Forget your password ? ',
          style: AppTextStyle.mediumFontSize12Orang,
        ),
      ),
    );
  }
}

