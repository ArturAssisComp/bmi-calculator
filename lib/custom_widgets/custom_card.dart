import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.color,
    this.child,
    super.key,
  });

  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
