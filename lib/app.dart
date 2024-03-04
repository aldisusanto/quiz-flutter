import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz/presentation/screens/welcome/intro_screen.dart';
import 'package:quiz/utils/theme/QuizAppTheme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: QuizAppTheme.lightTheme,
      darkTheme: QuizAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const IntroScreen(),
    );
  }
}
