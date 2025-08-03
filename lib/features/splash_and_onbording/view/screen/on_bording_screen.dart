import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/features/splash_and_onbording/view/widgets/button_and_already_have_sn_account.dart';
import 'package:e_commerce/features/splash_and_onbording/view/widgets/custom_dots_indicator.dart';
import 'package:e_commerce/features/splash_and_onbording/view/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBordingScreen extends StatefulWidget {
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
      
    super.initState();
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPageView(pageController: pageController),
          Positioned(
            bottom: 150,
            left: 0,
            right: 0,
            child: CustomDotsIndicator(
              positionendIndex: pageController.hasClients
                  ? (pageController.page ?? 0)
                  : 0,
            ),
          ),
          Positioned(
            top: 480,
            right: 30,
            left: 30,
            child: ButtonAndAlreadyHaveAnAccount(
              onPressed: () {
                //  final prefs = await SharedPreferences.getInstance();
                //   await prefs.setBool('isOnboardingCompleted', true);
                SharedPreferences.getInstance().then((prefs) {
                  prefs.setBool('isOnboardingCompleted', true);
                });
                if (pageController.page! < 2) {
                  pageController.nextPage(
                    duration: Duration(milliseconds: 250),
                    curve: Curves.easeIn,
                  );
                } else {
                  navigationpushReplacemen(
                    context,
                    AppRouterPath.kSignInScreen,
                  );
                }
              },
              title: pageController.hasClients
                  ? (pageController.page == 2 ? "Get Started" : "Next")
                  : 'Next',
            ),
          ),
        ],
      ),
    );
  }
}
