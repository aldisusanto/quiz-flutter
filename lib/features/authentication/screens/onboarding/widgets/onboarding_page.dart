import 'package:flutter/material.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(QuizSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: QuizHelper.screenWidth() * 0.8,
            height: QuizHelper.screenHeight() * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: QuizSizes.spaceBetweenItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
