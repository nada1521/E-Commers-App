import 'package:e_commerce/features/auth/sign_up/view/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/function/navigation.dart';
import '../../../../../core/function/show_snak_bar.dart';
import '../../../../../core/router/app_router_path.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../logic/sign_in_cubit.dart';

class BlocConsumerActionButton extends StatelessWidget {
  const BlocConsumerActionButton({super.key, required this.signInCubit});

  final SignInCubit signInCubit;

  @override
  Widget build(BuildContext context) {
   
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          navigationPushNamed(context, AppRouterPath.kNavBarScreens);
        } else if (state is SignInFailureState) {
          showSnakBar(context, state.erroreMessag);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            signInCubit.emitSignInState(context);
               },
          title: state is SignInLoadingState
              ? CustomLoadingIndicator()
              : Text('Sign In', style: AppTextStyle.semyBoldFontSize18wight),
        );
      },
    );
  }
}
