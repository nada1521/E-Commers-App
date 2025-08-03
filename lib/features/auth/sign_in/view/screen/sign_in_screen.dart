import 'package:flutter/material.dart';

import '../widgets/sign_in_form_widget.dart';
import '../widgets/welcome_back_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [WelcomeBackWidget(), SignInFormWidget()],
      ),
    );
  }
}
