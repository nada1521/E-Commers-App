import 'package:e_commerce/core/constant/app_assets_svg.dart';
import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/function/check_onboarding_and_signin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      checkOnboardingAndSignIn(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(241),
              SvgPicture.asset(
                AppAssetsSvg.onbording1,
                height: 350.h,
                width: 350,
              ),
              verticalSpace(163),
              CustomButton(
                onPressed: () {
                  navigationPushNamed(context, AppRouterPath.kOnBordingScreen);
                },
                title: Text(
                  'Let’s Get Started ',
                  style: AppTextStyle.semyBoldFontSize18wight,
                ),
              ),
              verticalSpace(115),
            ],
          ),
        ),
      ),
    );
  }
}
