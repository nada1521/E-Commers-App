import 'package:e_commerce/core/function/navigation.dart';
import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/router/app_router_path.dart';
import 'package:e_commerce/core/utils/app_text_style.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/auth/sign_in/logic/sign_in_cubit.dart';
import 'package:e_commerce/features/auth/sign_in/view/widgets/dont_have_an_account_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (context, state) {
        SignInCubit signInCubit = context.read<SignInCubit>();
        return Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(250),
                Text('Welcome Back!', style: AppTextStyle.boldFontSize20Orang),
                verticalSpace(10),
                Text(
                  'Enter your details below',
                  style: AppTextStyle.regularFontSize12Grey,
                ),
                CustomTextFormField(
                  hintText: 'Email Addres',
                  controll: signInCubit.emailController,
                  suffixIcon: Icon(Icons.email),
                ),
                CustomTextFormField(
                  hintText: 'Password',
                  controll: signInCubit.passwordController,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility),
                  ),
                ),
                verticalSpace(15),
                Align(
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
                ),
                verticalSpace(50),
                CustomButton(
                  onPressed: () {
                    signInCubit.emitSignInState();
                    navigationpushReplacemen(
                      context,
                      AppRouterPath.kHomeScreen,
                    );
                  },
                  title: 'Sign In',
                ),
                verticalSpace(50),
                DontHaveAnAccountSignUp(),
              ],
            ),
          ),
        );
      },
    );
  }
}
