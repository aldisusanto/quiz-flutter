import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz/utils/constans/colors.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: QuizStrings.firstName,
                      prefixIcon: Icon(Ionicons.person)),
                ),
              ),
              const SizedBox(
                width: QuizSizes.spaceBetweenInputFields,
              ),
              Expanded(
                  child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: QuizStrings.lastName,
                    prefixIcon: Icon(Ionicons.person)),
              ))
            ],
          ),
          const SizedBox(
            height: QuizSizes.spaceBetweenInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: QuizStrings.email, prefixIcon: Icon(Ionicons.mail)),
          ),
          const SizedBox(
            height: QuizSizes.spaceBetweenInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
                labelText: QuizStrings.password,
                prefixIcon: Icon(Ionicons.lock_closed),
                suffixIcon: Icon(Ionicons.eye)),
          ),
          const SizedBox(
            height: QuizSizes.spaceBetweenItems,
          ),
          Row(
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                        text: "${QuizStrings.iAggreeTo} ",
                        style: Theme.of(context).textTheme.labelSmall),
                    TextSpan(
                      text: QuizStrings.privacyPolice,
                      style: Theme.of(context).textTheme.labelMedium!.apply(
                          color: QuizColors.colorPrimary,
                          decoration: TextDecoration.underline,
                          decorationColor: QuizColors.colorPrimary),
                    ),
                    TextSpan(
                        text: " ${QuizStrings.and} ",
                        style: Theme.of(context).textTheme.labelSmall),
                    TextSpan(
                      text: QuizStrings.termOfUse,
                      style: Theme.of(context).textTheme.labelMedium!.apply(
                          color: QuizColors.colorPrimary,
                          decoration: TextDecoration.underline,
                          decorationColor: QuizColors.colorPrimary),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: QuizSizes.spaceBetweenItems,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: const Text(QuizStrings.signup)),
          ),
        ],
      ),
    );
  }
}
