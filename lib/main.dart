import 'package:flutter/material.dart';
import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
      primaryColor: Color(0xff1D2136),
      scaffoldBackgroundColor: Color(0xff1D2136),
        ),
      home: InputPage(),
    );
  }
}
