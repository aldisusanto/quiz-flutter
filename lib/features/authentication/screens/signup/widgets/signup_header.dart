import 'package:flutter/material.dart';
import 'package:quiz/utils/constans/image_string.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

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
          const SizedBox(
            height: QuizSizes.sm,
          ),
          Text(
            QuizStrings.createAccountHeading,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: QuizSizes.sm,
          ),
          Text(
            QuizStrings.createAccountBody,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
