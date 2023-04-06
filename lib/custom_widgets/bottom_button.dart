import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        margin: const EdgeInsets.only(top: 10),
        height: kBottomContainerHeight,
        width: double.infinity,
        padding: const EdgeInsets.only(bottom: 15),
        child: Center(
          child: Text(
            text,
            style:
                kTextDefaultStyle.copyWith(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }
}
