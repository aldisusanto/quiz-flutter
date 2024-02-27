import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz/presentation/styles/AppTextStyles.dart';
import 'package:quiz/presentation/widgets/button_widget.dart';
import 'package:quiz/presentation/widgets/google_button_widget.dart';

import '../signup/signup_screen_1.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            SvgPicture.asset(
              'assets/ic_quiz.svg',
              width: 100,
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "Let' Get Started!",
                style: AppTextStyle.heading,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 5.0)),
            const Center(
              child: Text(
                "Let's drive in into your account",
                style: AppTextStyle.bodyBlack45,
              ),
            ),

            const SizedBox(height: 30),
            /* Google Sign In Button*/
            SignInButton(
              text: "Continue with Google",
              icon: 'assets/ic_google.png',
              onPressed: () {
                print('Google Sign In button clicked');
              },
            ),

            /* Apple Sign In Button*/
            SignInButton(
              text: "Continue with Apple",
              icon: 'assets/ic_apple.png',
              onPressed: () {},
            ),

            /*Facebook Sign In Button*/
            SignInButton(
              text: "Continue with Facebook",
              icon: 'assets/ic_facebook.png',
              onPressed: () {},
            ),
            /*Twitter Sign In Button*/
            SignInButton(
              text: "Continue with Twitter",
              icon: 'assets/ic_twitter.png',
              onPressed: () {},
            ),
            // const ButtonWidget(text: "Sign Up", color: Colors.blue)
            const SizedBox(
              height: 40,
            ),

            /* Sign Up Button With Email & Password*/
            ButtonWidget(
              text: "Sign Up",
              backgroundColor: Colors.blueAccent,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
              },
            ),
            /* Sign In Button To Screen SignIn*/
            const SizedBox(height: 15),
            ButtonWidget(
              text: "Sign In",
              textColor: Colors.blueAccent,
              backgroundColor: const Color(0XFFEFF4FF),
              onPressed: () {},
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Privacy Police",
                style: AppTextStyle.bodyBlack45,
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Terms of Service",
                style: AppTextStyle.bodyBlack45,
              )),
        ],
      ),
    );
  }
}
