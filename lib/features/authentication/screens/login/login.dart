import 'package:flutter/material.dart';
import 'package:quiz/common/styles/spacing_style.dart';
import 'package:quiz/common/widgets/form_divider.dart';
import 'package:quiz/common/widgets/social_buttons.dart';
import 'package:quiz/utils/constans/sizes.dart';
import 'package:quiz/utils/constans/strings.dart';

import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: QuizSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /* Header*/
              LoginHeader(),

              /* Form */
              LoginForm(),

              /* Divider */
              FormDivider(dividerText: QuizStrings.orSignInWith),
              SizedBox(height: QuizSizes.spaceBetweenSections),

              /* Footer */
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
