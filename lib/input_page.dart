import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/custom_widgets/icon_with_description.dart';
import 'package:bmi_calculator/custom_widgets/custom_card.dart';
import 'package:bmi_calculator/constants.dart';

//Enums:
enum Gender {
  male,
  female,
}

//Classes;

class InputPage extends StatefulWidget {
  const InputPage({super.key, required this.title});

  final String title;

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  void Function() generateGenderSelectionFunction(Gender selectedGender) {
    return () {
      setState(() {
        this.selectedGender = selectedGender;
      });
    };
  }

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
                  child: CustomCard(
                    onTapFunc: generateGenderSelectionFunction(Gender.male),
                    color: selectedGender == Gender.male
                        ? kDefaultCardColor
                        : kInactiveCardColor,
                    child: const IconWithDescription(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    onTapFunc: generateGenderSelectionFunction(Gender.female),
                    color: selectedGender == Gender.female
                        ? kDefaultCardColor
                        : kInactiveCardColor,
                    child: const IconWithDescription(
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
              color: kDefaultCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: CustomCard(
                    color: kDefaultCardColor,
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: kDefaultCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10),
            height: kBottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
