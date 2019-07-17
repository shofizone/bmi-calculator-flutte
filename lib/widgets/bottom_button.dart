
import 'package:bmi_calculator/styles/const_style.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key key,
    @required this.bottomBarColor,
    @required this.text,
    @required this.action,
  }) : super(key: key);

  final Color bottomBarColor;
  final Function action;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:action,
      child: Container(
        color: bottomBarColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(text,style: kLargeButtonTextStyle,),
        ),
      ),
    );
  }
}