import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/custom_widgets/icon_with_description.dart';
import 'package:bmi_calculator/custom_widgets/custom_card.dart';

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
                    child: IconWithDescription(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: cardDefaultColor,
                    child: IconWithDescription(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
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
