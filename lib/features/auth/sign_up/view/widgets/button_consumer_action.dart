import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/function/show_pop_up.dart';
import '../../../../../core/function/show_snak_bar.dart';
import '../../../../../core/utils/app_text_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/dialog_successfully.dart';
import '../../logic/sign_up_cubit.dart';
import 'custom_loading_indicator.dart';

class ButtonBlocConsumerAction extends StatelessWidget {
  const ButtonBlocConsumerAction({super.key, required this.signUpCubit});

  final SignUpCubit signUpCubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          showPopUp(
            context,
            DialogSuccessfully(
              title: "Sign Up Successfully",
              subTitle: "Please press sign in to continue",
            ),
          );
        }
        if (state is SignUpFailureState) {
          showSnakBar(context, state.erroreMessag);
        }
      },
      builder: (context, state) {
        return CustomButton(
          onPressed: () {
            signUpCubit.emitSignUpState(context);
          },
          title: state is SignUpLoadingState
              ? CustomLoadingIndicator()
              : Text('Sign Up', style: AppTextStyle.semyBoldFontSize18wight),
        );
      },
    );
  }
}
