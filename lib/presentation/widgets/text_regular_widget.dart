import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.paddingValue,
      required this.textValue,
      required this.style});

  final double paddingValue;
  final String textValue;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: Text(textValue, style: style),
    );
  }
}
