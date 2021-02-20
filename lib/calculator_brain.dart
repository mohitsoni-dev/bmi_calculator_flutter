import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  String _interpretation;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      _interpretation =
          'You have a higher than normal body weight index. Try to exercise more.';
      return 'Overweight';
    } else if (_bmi > 18.5) {
      _interpretation = 'You have a normal body weight index. Good job!';
      return 'Normal';
    } else {
      _interpretation =
          'You have a lower than normal body weight index. You can eat a bit more.';
      return 'Underweight';
    }
  }

  String getInterPretation() {
    return _interpretation;
  }
}
