import 'package:flutter/material.dart';
import 'package:quiz/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';
import 'package:quiz/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: QuizDeviceUtility.getAppBarHeight(),
        right: QuizSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: const Text(QuizStrings.skipButton),
        ));
  }
}
