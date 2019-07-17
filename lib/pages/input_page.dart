import 'package:bmi_calculator/pages/result_page.dart';
import 'package:bmi_calculator/styles/const_style.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/icon_content.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:bmi_calculator/widgets/round_icon_button.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

import 'calculatorBrain.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.Male;
  Color bottomBarColor = kColorMale;
  int height = 180;
  int weight = 60;
  int age = 20;




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReUsableCard(
                      onPress: () {
                        selectedGender = Gender.Male;
                        bottomBarColor = kColorMale;
                        setState(() {});
                      },
                      color: selectedGender == Gender.Male
                          ? kSelectedColor
                          : kUnSelectedColor,
                      child: ReUsableTopCardItem(
                        icon: FontAwesomeIcons.mars,
                        text: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReUsableCard(
                      onPress: () {
                        selectedGender = Gender.Female;
                        bottomBarColor = kColorFemale;
                        setState(() {});
                      },
                      color: selectedGender == Gender.Female
                          ? kSelectedColor
                          : kUnSelectedColor,
                      child: ReUsableTopCardItem(
                        icon: FontAwesomeIcons.venus,
                        text: "Female",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReUsableCard(
                color: Color(0xff24263B),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "HEIGHT",
                      style: kLabelTextStyle,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kNumberText),
                        Text("cm", style: kLabelTextStyle),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey.withOpacity(0.2),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                        thumbColor: bottomBarColor,
                        overlayColor: bottomBarColor.withAlpha(0x29),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (value) {

                          setState(() {
                            height = value.round();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReUsableCard(color: Color(0xff24263B),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("WEIGHT",style: kLabelTextStyle,),
                        Text(weight.toString(),style: kNumberText,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(color: kSelectedColor,iconData: FontAwesomeIcons.minus,onPressed: (){
                              setState(() {
                                weight--;
                              });

                            },),
                            SizedBox(width: 15,),
                            RoundIconButton(color: kSelectedColor,iconData: FontAwesomeIcons.plus,onPressed: (){
                              setState(() {
                                weight++;
                              });

                            },),

                          ],
                        ),
                      ],
                    ) ,),
                  ),
                  Expanded(
                    child: ReUsableCard(color: Color(0xff24263B),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("AGE",style: kLabelTextStyle,),
                          Text(age.toString(),style: kNumberText,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(color: kSelectedColor,iconData: FontAwesomeIcons.minus,onPressed: (){
                                setState(() {
                                  age--;
                                });

                              },),
                              SizedBox(width: 15,),
                              RoundIconButton(color: kSelectedColor,iconData: FontAwesomeIcons.plus,onPressed: (){
                                setState(() {
                                  age++;
                                });

                              },),

                            ],
                          ),
                        ],
                      ) ,),
                  ),
                ],
              ),
            ),
             BottomButton(bottomBarColor: bottomBarColor,
            text: "CALCULATE",
            action: (){
              CalculatorBrain cal = CalculatorBrain(weight,height);
              Navigator.push(context, CupertinoPageRoute(builder: (context)=>ResultPage(cal)));
            },),
          ],
        ));
  }
}





