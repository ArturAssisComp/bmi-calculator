//Custom themes:
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

enum ThemeType {
  main,
}

ThemeData generateTheme(
    {required BuildContext context, ThemeType type = ThemeType.main}) {
  switch (type) {
    case ThemeType.main:
      return ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          inactiveTrackColor: kSliderInactiveColor,
          activeTrackColor: kSliderActiveTrackColor,
          thumbColor: kSliderThumbColor,
          overlayColor: kSliderOverlayColor,
          thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15),
          overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
        ),
        scaffoldBackgroundColor: const Color(0xFF0D101F),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0F1224),
        ),
      );
    default:
      return ThemeData.light();
  }
}
