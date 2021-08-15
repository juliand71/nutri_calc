import 'package:flutter/material.dart';
import 'package:nutri_calc/constants.dart';
import 'package:nutri_calc/reusable_tile.dart';

import 'bottom_button.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.calc});

  final CalculatorBrain calc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Results',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableTile(
              color: kActiveCardColor,
              tileChild: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'BMI',
                        style: kResultTextStyle,
                      ),
                      Text(
                        calc.calculateBMI(),
                        style: kBMITextStyle,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Mifflin',
                        style: kResultTextStyle,
                      ),
                      Text(
                        calc.calculateMifflin(),
                        style: kBMITextStyle,
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Harris Benedict',
                        style: kResultTextStyle,
                      ),
                      Text(
                        calc.calculateHBE(),
                        style: kBMITextStyle,
                      )
                    ],
                  ),
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
