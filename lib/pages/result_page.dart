
import 'package:bmi_calculator/styles/const_style.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'calculatorBrain.dart';

import 'input_page.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  final CalculatorBrain calculatorBrain;
  ResultPage(this.calculatorBrain);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUsableCard(
              color: kSelectedColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    calculatorBrain.getResult(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    calculatorBrain.getBMI(),
                    style: kBMItTextStyle,
                  ),
                  Text(
                      calculatorBrain.getInterpretation(),
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          ),
          BottomButton(
            text: "Re-Calculate",
            bottomBarColor: Colors.blue,
            action: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
