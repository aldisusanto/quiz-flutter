import 'package:flutter/material.dart';
import 'package:quiz/features/authentication/screens/onboarding/onboarding.dart';
import 'package:quiz/utils/constans/image_string.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ),
          (route) => false);
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              QuizImages.logo,
              height: QuizSizes.imageLogoSize,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                QuizStrings.appName,
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w400),
              ),
            ),
          )
        ],
      ),
    );
  }
}
