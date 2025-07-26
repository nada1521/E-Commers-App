import 'package:e_commerce/features/auth/Forget%20Password/view/widgets/create_new_password_form_widget.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: CreateNewPasswordFormWidget(),
      ),
    );
  }
}

