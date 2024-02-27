import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton(
      {super.key, this.onPressed, required this.text, this.icon});

  final VoidCallback? onPressed;
  final String text;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.7, color: Colors.black12),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 5, bottom: 5),
        child: InkWell(
          onTap: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              if (icon != null) ...[
                Image.asset(
                  icon!,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(width: 8.0),
              ],
              const SizedBox(width: 8.0),
              Text(
                text,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: "Poppins",
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
