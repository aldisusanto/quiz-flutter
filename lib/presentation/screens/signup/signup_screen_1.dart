import 'package:flutter/material.dart';
import 'package:quiz/presentation/styles/AppTextStyles.dart';
import 'package:quiz/presentation/widgets/button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: TextStyle(
              fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  "Join Quizzo Today",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Power up your learning with Quizzo",
                  style: AppTextStyle.bodyBlack45,
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: ButtonWidget(
          text: "Sign up",
          textColor: Colors.white,
          backgroundColor: Colors.blueAccent,
          onPressed: () {},
        ),
      ),
    );
  }
}
