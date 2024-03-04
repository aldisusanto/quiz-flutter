import 'package:flutter/material.dart';
import 'package:quiz/common/widgets/form_divider.dart';
import 'package:quiz/common/widgets/social_buttons.dart';
import 'package:quiz/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:quiz/features/authentication/screens/signup/widgets/signup_header.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(QuizSizes.defaultSpace),
          child: Column(
            children: [
              /* Header */
              SignUpHeader(),
              SizedBox(
                height: QuizSizes.spaceBetweenSections,
              ),
              /* Form Register*/
              SignUpForm(),
              SizedBox(
                height: QuizSizes.spaceBetweenSections,
              ),

              /* Form Divider*/
              FormDivider(dividerText: QuizStrings.orSignUpWith),
              SizedBox(height: QuizSizes.spaceBetweenSections),

              /* Social Button*/
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
