import 'dart:math';

class BMICalculator {
  static const double _upperBMILimit = 25;
  static const double _midBMILimit = 18.5;
  static const String _overweightText =
      'You have a higher than normal body weight. Try to exercise more.';
  static const String _normalWeightText =
      'You have a normal body weight. Good job.';
  static const String _underweightText =
      'You have a lower than normal body weight. You can eat a bit more.';

  BMICalculator({required this.height, required this.weight}) {
    _bmi = weight / pow(height / 100, 2);
    if (_bmi >= _upperBMILimit) {
      _wordResult = 'OVERWEIGHT';
      _textResult = _overweightText;
    } else if (_bmi >= _midBMILimit) {
      _wordResult = 'NORMAL';
      _textResult = _normalWeightText;
    } else {
      _wordResult = 'UNDERWEIGHT';
      _textResult = _underweightText;
    }
  }
  final int weight;
  final int height;
  late final double _bmi;
  late final String _wordResult;
  late final String _textResult;

  double get bmi => _bmi;

  String get wordResult => _wordResult;
  String get textResult => _textResult;
}
