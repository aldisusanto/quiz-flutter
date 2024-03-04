import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/device/device_utility.dart';

class OnBoardingCircularButton extends StatelessWidget {
  const OnBoardingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: QuizSizes.defaultSpace,
        bottom: QuizDeviceUtility.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () {
              OnBoardingController.instance.nextPage();
            },
            style: ElevatedButton.styleFrom(shape: const CircleBorder()),
            child: const Icon(Ionicons.arrow_forward)));
  }
}
