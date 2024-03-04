import 'package:flutter/material.dart';

class QuizTextButtonTheme {
  QuizTextButtonTheme._();

  static final lightTextButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
  ));

  static final darkTextButtonTheme = TextButtonThemeData(
      style: TextButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    textStyle: const TextStyle(
        fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
  ));
}
