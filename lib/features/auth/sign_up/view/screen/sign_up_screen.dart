import 'package:e_commerce/features/auth/sign_up/view/widgets/get_started_text.dart';
import 'package:e_commerce/features/auth/sign_up/view/widgets/sign_up_form_widget.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [GetStartedText(), SignUpFormWidget()]),
    );
  }
}
