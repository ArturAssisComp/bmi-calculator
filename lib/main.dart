import 'package:flutter/material.dart';
import 'package:bmi_calculator/themes.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:bmi_calculator/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      theme: generateTheme(context: context),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(title: kAppTitle),
        '/results': (context) => const ResultPage(
              title: kAppTitle,
              resultNumber: 12.3,
              resultText: 'hello world',
              resultWord: 'OVERWEIGHT',
            ),
      },
    );
  }
}
