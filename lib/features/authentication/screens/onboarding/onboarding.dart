import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:quiz/utils/constans/image_string.dart';
import 'package:quiz/utils/constans/strings.dart';

import 'widgets/onboarding_circular_button.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /* Horizontal Scrollable Page*/
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: QuizImages.logo,
                  title: QuizStrings.onBoardingTitle1,
                  subtitle: QuizStrings.onBoardingSubTitle1),
              OnBoardingPage(
                  image: QuizImages.logo,
                  title: QuizStrings.onBoardingTitle1,
                  subtitle: QuizStrings.onBoardingSubTitle1),
              OnBoardingPage(
                  image: QuizImages.logo,
                  title: QuizStrings.onBoardingTitle1,
                  subtitle: QuizStrings.onBoardingSubTitle1),
            ],
          ),

          /* Skip Button */
          const OnBoardingSkip(),

          /* Dot Navigation*/
          const OnBoardingDotNavigation(),

          /* Circular Button*/
          const OnBoardingCircularButton()
        ],
      ),
    );
  }
}
