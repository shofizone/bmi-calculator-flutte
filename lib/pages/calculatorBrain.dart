
import 'dart:math';

class CalculatorBrain{

  final int weight;
  final int height;
  double _bmi;

  CalculatorBrain(this.weight, this.height){
    calculateBMI();
  }

   calculateBMI(){
     _bmi = weight/pow(height/100,2);
  }

  getBMI(){
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >=25){
      return "Overweight";
    }else if(_bmi > 18.5){
      return "Normal";
    }else{
      return "Under Weight";
    }
  }


  String getInterpretation(){

    if(_bmi >=25){
      return "You have a higher than normal body weight. Try to exercise more";
    }else if(_bmi > 18.5){
      return "You have a normal body weight. Good job!";
    }else{
      return "You have a lower than normal body weight. try eate more !";
    }

  }


}