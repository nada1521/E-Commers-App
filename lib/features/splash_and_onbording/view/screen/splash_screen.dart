import 'package:e_commerce/core/constant/app_assets_svg.dart';
import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                  Future.delayed(Duration(milliseconds: 100), () {
                    navigationPushNamed(
                      context,
                      AppRouterPath.kOnBordingScreen,
                    );
                  });
                },
                title: 'Let’s Get Started ',
              ),
              verticalSpace(115),
            ],
          ),
        ),
      ),
    );
  }
}
