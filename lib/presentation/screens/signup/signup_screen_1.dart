import 'package:flutter/material.dart';
import 'package:quiz/presentation/styles/AppTextStyles.dart';
import 'package:quiz/presentation/widgets/button_widget.dart';
import 'package:quiz/presentation/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();

  SignUpScreen({super.key});

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  "Join Quizzo Today",
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),
                ),
                const Text(
                  "Power up your learning with Quizzo",
                  style: AppTextStyle.bodyBlack45,
                ),
                CustomTextField(
                    hintText: "Email", controller: emailEditingController)
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
