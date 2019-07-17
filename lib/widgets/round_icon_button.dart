import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Function onPressed;
  RoundIconButton({this.color,this.iconData, @required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 1.0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      fillColor: color,
      child: Icon(iconData,color: Colors.white,),
      onPressed: onPressed,
    );
  }
}