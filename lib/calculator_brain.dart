import 'dart:math';


class CalculatorBrain {
  CalculatorBrain({
    required this.height,
    required this.weight,
    required this.age,
  });

  final int height;
  final int weight;
  final int age;

  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  int getageplusweight() {
    return age + weight;
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your have a higher than normal body weight.Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a Normal body weight.Good job!';
    } else {
      return 'Your have a lower than normal body weight.You can eat bit more.';
    }
  }
}
