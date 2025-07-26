import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/core/service/service_locator.dart';
import 'package:e_commerce/features/Home/view/screens/home_screen.dart';
import 'package:e_commerce/features/auth/Forget%20Password/view/screen/create_new_password.dart';
import 'package:e_commerce/features/auth/Forget%20Password/view/screen/forget_password_screen.dart';
import 'package:e_commerce/features/auth/Forget%20Password/view/screen/verification_code_screen.dart';
import 'package:e_commerce/features/auth/sign_in/logic/sign_in_cubit.dart';
import 'package:e_commerce/features/auth/sign_in/view/screen/sign_in_screen.dart';
import 'package:e_commerce/features/auth/sign_up/data/repos/sign_up_repo.dart';
import 'package:e_commerce/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:e_commerce/features/auth/sign_up/view/screen/sign_up_screen.dart';
import 'package:e_commerce/features/splash_and_onbording/view/screen/on_bording_screen.dart';
import 'package:e_commerce/features/splash_and_onbording/view/screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(getIt.get<SignUpRepo>()),
          child: SignUpScreen(),
        ),
      ),
      GoRoute(
        path: AppRouterPath.kSignInScreen,
        name: AppRouterPath.kSignInScreen,
        builder: (context, state) => BlocProvider(
          create: (context) =>SignInCubit(getIt.get()),
          child: SignInScreen(),
        ),
      ),
      GoRoute(
        path: AppRouterPath.kForgetPasswordScreen,
        name: AppRouterPath.kForgetPasswordScreen,
        builder: (context, state) => ForgetPasswordScreen(),
      ),
      GoRoute(
        path: AppRouterPath.kVerificationCodeScreen,
        name: AppRouterPath.kVerificationCodeScreen,
        builder: (context, state) => VerificationCodeScreen(),
      ),
      GoRoute(
        path: AppRouterPath.kCreateNewPasswordScreen,
        name: AppRouterPath.kCreateNewPasswordScreen,
        builder: (context, state) => CreateNewPasswordScreen(),
      ),
       GoRoute(
        path: AppRouterPath.kHomeScreen,
        name: AppRouterPath.kHomeScreen,
        builder: (context, state) => HomeScreen(),
      ),
    ],
  );
}
