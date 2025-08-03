import 'package:flutter/widgets.dart';
import '../../../../../core/helper/spacing.dart';
import '../../../../../core/utils/app_text_style.dart';

class WelcomeBackWidget extends StatelessWidget {
  const WelcomeBackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          verticalSpace(250),
          Text('Welcome Back!', style: AppTextStyle.boldFontSize20Orang),
          verticalSpace(10),
          Text(
            'Enter your details below',
            style: AppTextStyle.regularFontSize12Grey,
          ),
        ],
      ),
    );
  }
}
