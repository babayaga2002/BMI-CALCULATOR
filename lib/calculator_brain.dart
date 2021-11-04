import 'dart:math';

class CalcuatorBrain {
  CalcuatorBrain({required this.weight, required this.height});

  final weight;
  final height;
  double _bmi = 0;
  String Calc() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String res() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String interpretation() {
    if (_bmi >= 25) {
      return 'Eat less';
    } else if (_bmi > 18.5) {
      return 'Eat Normal';
    } else {
      return 'Eat More';
    }
  }
}
