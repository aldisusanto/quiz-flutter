import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key,
      required this.text,
      this.onPressed,
      required this.textColor,
      required this.backgroundColor});

  final String text;
  final VoidCallback? onPressed;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: backgroundColor,
              ),
              onPressed: onPressed,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: textColor,
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )))),
    );
  }
}
