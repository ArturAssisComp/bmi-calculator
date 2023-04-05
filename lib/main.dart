import 'package:flutter/material.dart';
import 'package:bmi_calculator/themes.dart';
import 'package:bmi_calculator/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: generateTheme(context: context),
      home: const InputPage(title: 'BMI Calculator'),
    );
  }
}
