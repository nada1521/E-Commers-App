import 'package:e_commerce/features/auth/sign_in/view/widgets/sign_in_form_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SignInFormWidget(),
      ),
    );
  }
}

