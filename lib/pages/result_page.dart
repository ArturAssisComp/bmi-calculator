import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/custom_widgets/bottom_button.dart';
import 'package:bmi_calculator/custom_widgets/custom_card.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final String wordResult = args['wordResult'];
    final double numberResult = args['bmi'];
    final String textResult = args['textResult'];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Expanded(
            child: Text(
              'YOUR RESULTS',
              style: kTextDefaultStyle.copyWith(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: CustomCard(
                color: kDefaultCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Result word
                    Text(
                      wordResult,
                      textAlign: TextAlign.center,
                      style: kTextDefaultStyle.copyWith(
                        color: Colors.green,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      numberResult.toStringAsFixed(1),
                      textAlign: TextAlign.center,
                      style: kNumberDefaultStyle.copyWith(
                        fontWeight: FontWeight.w900,
                        fontSize: 100,
                      ),
                    ),
                    Text(
                      textResult,
                      textAlign: TextAlign.center,
                      style: kTextDefaultStyle.copyWith(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            child: BottomButton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
