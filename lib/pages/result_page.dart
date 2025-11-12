import 'package:flutter/material.dart';
import 'package:bmr/components/custom_card.dart';
import 'package:bmr/constants.dart';
import 'package:bmr/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {required this.result, required this.bmi, required this.information});

  final String result;
  final String bmi;
  final String information;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMR CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: resultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: bmiTextStyle,
                  ),
                  Text(
                    information,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}