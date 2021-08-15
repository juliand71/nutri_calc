import 'dart:math';

import 'package:nutri_calc/constants.dart';

class CalculatorBrain {
  CalculatorBrain(
      {required this.height,
      required this.weight,
      required this.age,
      required this.gender});
  final int age;
  final Gender gender;
  final int height;
  final int weight;

  double _bmi = 0.0;
  double _mifflin = 0.0;
  double _hbe = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  // Nifflin St. Jeor equation
  String calculateMifflin() {
    if (gender == Gender.male) {
      _mifflin = (10.0 * weight) + (6.25 * height) - 5 * age + 5;
    } else {
      _mifflin = (10.0 * weight) + (6.25 * height) - 5 * age - 161;
    }

    return _mifflin.round().toString();
  }

  // Harris Benedict Equation
  String calculateHBE() {
    if (gender == Gender.male) {
      _hbe = 66.47 + 13.75 * weight + 5 * height - 6.75 * age;
    } else {
      _hbe = 655.1 + 9.56 * weight + 1.85 * height - 4.68 * age;
    }
    return _hbe.round().toString();
  }
}
