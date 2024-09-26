void main() {
  final value = 20;
  final valueFourTimes = value.timesFour;
  print(valueFourTimes);
  print(30.timesFour);
  print("Hello, World!".reversed);
}

extension on int {
  int get timesFour => this * 4;
}

extension on String {
  String get reversed => split('').reversed.join();
}
