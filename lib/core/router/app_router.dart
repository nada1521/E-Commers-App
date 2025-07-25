import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/features/auth/sign_in/view/screen/sign_in_screen.dart';
import 'package:e_commerce/features/auth/sign_up/view/screen/sign_up_screen.dart';
import 'package:e_commerce/features/splash_and_onbording/view/screen/on_bording_screen.dart';
import 'package:e_commerce/features/splash_and_onbording/view/screen/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: '/',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: AppRouterPath.kOnBordingScreen,
        name: AppRouterPath.kOnBordingScreen,
        builder: (context, state) => OnBordingScreen(),
      ),
       GoRoute(
        path: AppRouterPath.kSignUpScreen,
        name: AppRouterPath.kSignUpScreen,
        builder: (context, state) => SignUpScreen(),
      ),
       GoRoute(
        path: AppRouterPath.kSignInScreen,
        name: AppRouterPath.kSignInScreen,
        builder: (context, state) => SignInScreen(),
      ),
    ],
  );
}
