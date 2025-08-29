import 'package:bmi_calculator_pr/bottom_button.dart';
import 'package:bmi_calculator_pr/reuseable.dart';
import 'constants.dart';
import 'package:flutter/material.dart';


class ResultPage extends StatelessWidget {
  ResultPage({
    required this.bmiResult,
    required this.interpretation,
    required this.resultText,
    required this.ageplusweight,
  });

  final String bmiResult;
  final String interpretation;
  final String resultText;
  final int ageplusweight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kActiveCardColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'Your Result',
                style: kTitlesTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reuseable(
              onPress: () {},
              colour: kFadedMidNightBlueColor,
              Containerchild: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult,
                      style: kBMITextStyle,
                    ),
                    Text(
                      interpretation,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'AGE + WEIGHT\ $ageplusweight',
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
