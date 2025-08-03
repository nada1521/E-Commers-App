import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/router/app_router_path.dart';

import 'package:shared_preferences/shared_preferences.dart';

void checkOnboardingAndSignIn(context) async {
  final prefs = await SharedPreferences.getInstance();

  final bool isSignedIn = prefs.getBool('isSignedIn') ?? false;
  final bool isOnboardingCompleted =
      prefs.getBool('isOnboardingCompleted') ?? false;

  if (!isOnboardingCompleted) {
    return navigationPushNamed(context, AppRouterPath.kOnBordingScreen);
  } else if (!isSignedIn) {
    return navigationPushNamed(context, AppRouterPath.kSignInScreen);
  } else {
    return navigationPushNamed(context, AppRouterPath.kNavBarScreens);
  }
}
