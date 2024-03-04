import 'package:flutter/material.dart';
import 'package:quiz/utils/constans/image_string.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            image: AssetImage(QuizImages.logo),
            height: 130,
          ),
          const SizedBox(height: QuizSizes.sm),
          Text(
            QuizStrings.welcomeBackString,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: QuizSizes.sm),
          Text(
            QuizStrings.welcomeBackSubtitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
