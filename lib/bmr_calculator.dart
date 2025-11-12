import 'constants.dart';

class BmrCalculator {
  BmrCalculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
  });

  final int height;
  final int weight;
  final int age;
  final Gender gender;

  double _bmr = 0.0;

  String calculateBMR() {
    if (gender == Gender.male) {
      _bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
    } else {
      _bmr = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
    }
    return _bmr.toStringAsFixed(1);
  }

  String getInterpretation() {
    return 'This is the amount of calories you burn per day at rest.';
  }
}
