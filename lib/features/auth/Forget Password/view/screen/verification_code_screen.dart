import 'package:e_commerce/features/auth/Forget%20Password/view/widgets/verification_code_form_widget.dart';
import 'package:flutter/material.dart';


class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: VerificationCodeFormWidget(),
      ),
    );
  }
}

