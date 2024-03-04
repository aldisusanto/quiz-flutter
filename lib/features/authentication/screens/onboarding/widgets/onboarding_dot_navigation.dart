import 'package:flutter/material.dart';
import 'package:quiz/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:quiz/utils/constans/colors.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: QuizDeviceUtility.getBottomNavigationBarHeight() + 25,
      left: QuizSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNavigationClick,
        effect: const ExpandingDotsEffect(

            activeDotColor: QuizColors.colorPrimary, dotHeight: 6),
      ),
    );
  }
}
