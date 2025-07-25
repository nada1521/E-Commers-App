import 'package:e_commerce/core/constant/app_assets_svg.dart';
import 'package:e_commerce/features/splash_and_onbording/view/widgets/onboarding_title_and_subtitle.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller:pageController ,
      children: [
        OnboardingTitleAndSubTitle(
          svgImage: AppAssetsSvg.onbording1,
          title: 'Free-Spirited Fashion Finds',
          subTitle:
              'Browse thousands of products, from fashion to tech. Find what you love, effortlessly.',
        ),
        OnboardingTitleAndSubTitle(
          svgImage: AppAssetsSvg.onbording2,
          title: 'Dressing Well Made Easy',
          subTitle: 'Discover a Collection That Speaks Volumes in Silence.',
        ),
        OnboardingTitleAndSubTitle(
          svgImage: AppAssetsSvg.onbording3,
          title: 'Elegance Redefined',
          subTitle:
              'Discover a world of timeless fashion for the modern woman.',
        ),
      ],
    );
  }
}
