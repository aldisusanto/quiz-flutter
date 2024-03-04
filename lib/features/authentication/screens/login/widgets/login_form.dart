import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:quiz/features/authentication/screens/signup/signup.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: QuizSizes.spaceBetweenSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Ionicons.mail),
                  labelText: QuizStrings.email),
            ),
            const SizedBox(height: QuizSizes.spaceBetweenInputFields),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Ionicons.lock_closed),
                  labelText: QuizStrings.password,
                  suffixIcon: Icon(Ionicons.eye)),
            ),
            const SizedBox(
              height: QuizSizes.spaceBetweenInputFields / 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text(
                      QuizStrings.rememberMe,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      QuizStrings.forgotPassword,
                    ))
              ],
            ),
            const SizedBox(
              height: QuizSizes.spaceBetweenItems,
            ),

            /* Sign In Button */
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text(QuizStrings.signIn)),
            ),
            const SizedBox(
              height: QuizSizes.spaceBetweenItems,
            ),

            /* Sign Up Button*/
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    Get.to(() => const SignUpScreen());
                  },
                  child: const Text(QuizStrings.signup)),
            ),
            const SizedBox(
              height: QuizSizes.spaceBetweenItems,
            ),
          ],
        ),
      ),
    );
  }
}
