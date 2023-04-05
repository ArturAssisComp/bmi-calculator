import 'package:flutter/material.dart';

//Constants:
const Color cardDefaultColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80.0;

//Classes;

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CustomCard(
                    color: cardDefaultColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: cardDefaultColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CustomCard(
              color: cardDefaultColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CustomCard(
                    color: cardDefaultColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: cardDefaultColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

//Aux widgets:
class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.color,
    super.key,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
