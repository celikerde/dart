void main() {
  final brownRabbit = AnimalType.brownRabbit;
  final camel = AnimalType.camel;
  print(brownRabbit.upperCaseLetterIsInclueded);
  print(camel.upperCaseLetterIsInclueded);
}

extension on Enum {
  bool get upperCaseLetterIsInclueded => name.contains(RegExp(r'[A-Z]'));
}

enum AnimalType {
  cat,
  dog,
  fish,
  camel,
  rabbit,
  brownRabbit,
}
