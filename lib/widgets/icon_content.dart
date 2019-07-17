import 'package:flutter/material.dart';
import '../styles/const_style.dart';
class ReUsableTopCardItem extends StatelessWidget {
  final String text;
  final IconData icon;
  ReUsableTopCardItem({
    @required this.text,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size: 80,),
        SizedBox(height: 15,),
        Text(text,style: kLabelTextStyle,)
      ],
    );
  }
}