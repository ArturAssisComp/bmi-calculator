import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/custom_widgets/icon_with_description.dart';
import 'package:bmi_calculator/custom_widgets/custom_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/custom_widgets/round_icon_button.dart';

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
  Gender _selectedGender = Gender.male;
  int _height = ((kMinHeight + kMaxHeight) / 2).round();
  int _weight = ((kMinWeight + kMaxWeight) / 2).round();
  int _age = ((kMinAge + kMaxAge) / 2).round();

  void Function() generateGenderSelectionFunction(Gender selectedGender) {
    return () {
      setState(() {
        _selectedGender = selectedGender;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    onTapFunc: generateGenderSelectionFunction(Gender.male),
                    color: _selectedGender == Gender.male
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
                    color: _selectedGender == Gender.female
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
          Expanded(
            child: CustomCard(
              color: kDefaultCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kTextDefaultStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        _height.toString(),
                        style: kNumberDefaultStyle,
                      ),
                      const Text(
                        'cm',
                        style: kTextDefaultStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: _height.toDouble(),
                    min: kMinHeight.toDouble(),
                    max: kMaxHeight.toDouble(),
                    onChanged: (double selectedValue) {
                      setState(() {
                        _height = selectedValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CustomCard(
                    color: kDefaultCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: kTextDefaultStyle,
                        ),
                        Text(
                          _weight.toString(),
                          style: kNumberDefaultStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (_weight > kMinWeight) {
                                    _weight--;
                                  }
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  if (_weight < kMaxWeight) {
                                    _weight++;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CustomCard(
                    color: kDefaultCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: kTextDefaultStyle,
                        ),
                        Text(
                          _age.toString(),
                          style: kNumberDefaultStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (_age > kMinAge) {
                                    _age--;
                                  }
                                });
                              },
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  if (_age < kMaxAge) {
                                    _age++;
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/results');
            },
            child: Container(
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10),
              height: kBottomContainerHeight,
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 15),
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: kTextDefaultStyle.copyWith(
                      color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
