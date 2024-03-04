import 'package:flutter/material.dart';
import 'package:quiz/utils/theme/custom_theme/appbar_theme.dart';
import 'package:quiz/utils/theme/custom_theme/bottomsheet_theme.dart';
import 'package:quiz/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:quiz/utils/theme/custom_theme/chip_theme.dart';
import 'package:quiz/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:quiz/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:quiz/utils/theme/custom_theme/text_button_theme.dart';
import 'package:quiz/utils/theme/custom_theme/text_field_theme.dart';
import 'package:quiz/utils/theme/custom_theme/text_theme.dart';

class QuizAppTheme {
  QuizAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blueAccent,
      scaffoldBackgroundColor: Colors.white,
      textTheme: QuizTextTheme.lightTextTheme,
      appBarTheme: QuizAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: QuizBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme: QuizCheckBoxTheme.lightCheckboxTheme,
      chipTheme: QuizChipTheme.lightChipTheme,
      textButtonTheme: QuizTextButtonTheme.lightTextButtonTheme,
      inputDecorationTheme: QuizTextFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: QuizOutlineButtonTheme.lightOutlineButtonTheme,
      elevatedButtonTheme: QuizElevatedButtonTheme.lightElevatedButtonTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Poppins",
      brightness: Brightness.light,
      primaryColor: Colors.blueAccent,
      scaffoldBackgroundColor: Colors.black54,
      textTheme: QuizTextTheme.darkTextTheme,
      appBarTheme: QuizAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: QuizBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme: QuizCheckBoxTheme.darkCheckboxTheme,
      chipTheme: QuizChipTheme.darkChipTheme,
      textButtonTheme: QuizTextButtonTheme.darkTextButtonTheme,
      inputDecorationTheme: QuizTextFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: QuizOutlineButtonTheme.darkOutlineButtonTheme,
      elevatedButtonTheme: QuizElevatedButtonTheme.darkElevatedButtonTheme);
}
