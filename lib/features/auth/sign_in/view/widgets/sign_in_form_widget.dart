import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/auth/sign_in/logic/sign_in_cubit.dart';
import 'package:e_commerce/features/auth/sign_in/view/widgets/dont_have_an_account_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_consumer_action_button.dart';
import 'forget_password_widget.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SignInCubit signInCubit = context.read<SignInCubit>();
    return SliverToBoxAdapter(
      child: Form(
        key: signInCubit.signInFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
       
              CustomTextFormField(
                hintText: 'Email Addres',
                controller: signInCubit.emailController,
                suffixIcon: Icon(Icons.email),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                hintText: 'Password',
                controller: signInCubit.passwordController,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.visibility),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              verticalSpace(15),
              ForgetPasswordWidget(),
              verticalSpace(50),
              BlocConsumerActionButton(signInCubit: signInCubit),
              verticalSpace(50),
              DontHaveAnAccountSignUp(),
            ],
          ),
        ),
      ),
    );
  }
}

