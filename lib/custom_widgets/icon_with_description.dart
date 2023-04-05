import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconWithDescription extends StatelessWidget {
  const IconWithDescription({
    required this.icon,
    required this.text,
    super.key,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(
          text,
          style: kTextDefaultStyle,
        )
      ],
    );
  }
}
