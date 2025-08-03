import 'package:e_commerce/features/auth/sign_up/logic/sign_up_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce/core/helper/spacing.dart';
import 'package:e_commerce/core/widgets/custom_text_form_field.dart';
import 'package:e_commerce/features/splash_and_onbording/view/widgets/already_have_an_accunt_sign_in.dart';
import 'package:flutter/material.dart';
import 'button_consumer_action.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpCubit signUpCubit = context.read<SignUpCubit>();
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Form(
          key: signUpCubit.signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Name',
                controller: signUpCubit.nameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  if (value.length < 3) {
                    return 'Name must be at least 3 characters';
                  }
                  return null;
                },
              ),
              CustomTextFormField(
                hintText: 'Email',
                controller: signUpCubit.emailController,
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
                hintText: 'Phone Number',
                controller: signUpCubit.phonNumberController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  if (value.length < 11) {
                    return 'accepte only egypt Phone numbers ';
                  }
                  return null;
                },
              ),

              CustomTextFormField(
                hintText: 'Password',
                controller: signUpCubit.passwordController,
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
              CustomTextFormField(
                hintText: 'Confirm Password',
                controller: signUpCubit.confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter confirm your password';
                  } else if (value != signUpCubit.passwordController.text) {
                    'password confirmation is  incorrect';
                  }
                  return null;
                },
              ),
              verticalSpace(50),
              ButtonBlocConsumerAction(signUpCubit: signUpCubit),
              verticalSpace(50),
              AlreadyHaveAnAccuntSignInText(),
              verticalSpace(50),
            ],
          ),
        ),
      ),
    );
  }
}
