import 'package:flutter/cupertino.dart';
import 'package:quiz/utils/constans/sizes.dart';

class QuizSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: QuizSizes.appBarHeight,
      left: QuizSizes.defaultSpace,
      right: QuizSizes.defaultSpace,
      bottom: QuizSizes.defaultSpace
  );
}