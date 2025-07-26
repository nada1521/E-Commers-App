import 'package:e_commerce/features/auth/Forget%20Password/view/widgets/code_item.dart';
import 'package:flutter/material.dart';

class CodeContainers extends StatelessWidget {
  const CodeContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [CodeItem(), CodeItem(), CodeItem(), CodeItem()],
    );
  }
}