import 'package:flutter/material.dart';
import 'package:quiz/utils/constans/colors.dart';
import 'package:quiz/utils/constans/image_string.dart';
import 'package:quiz/utils/constans/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /* Google Button */
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: QuizColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(QuizImages.google),
              height: QuizSizes.iconMd,
              width: QuizSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(
          width: QuizSizes.spaceBetweenItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: QuizColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              image: AssetImage(QuizImages.facebook),
              height: QuizSizes.iconMd,
              width: QuizSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
