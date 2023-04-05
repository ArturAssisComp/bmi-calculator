import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/custom_widgets/icon_with_description.dart';
import 'package:bmi_calculator/custom_widgets/custom_card.dart';

//Enums:
enum Gender {
  male,
  female,
}

//Constants:
const Color defaultCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);
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
  Gender selectedGender = Gender.male;

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
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    child: CustomCard(
                      color: selectedGender == Gender.male
                          ? defaultCardColor
                          : inactiveCardColor,
                      child: const IconWithDescription(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    child: CustomCard(
                      color: selectedGender == Gender.female
                          ? defaultCardColor
                          : inactiveCardColor,
                      child: const IconWithDescription(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: CustomCard(
              color: defaultCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CustomCard(
                    color: defaultCardColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: defaultCardColor,
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
