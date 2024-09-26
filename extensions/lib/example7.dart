import 'dart:math' show Random;

void main() {
  print(add.callWithRandomValues());
  print(substract.callWithRandomValues());
}

int add(int a, int b) => a + b;
int substract(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValues() {
    final num1 = Random().nextInt(100);
    final num2 = Random().nextInt(100);
    print("Random nums are $num1 and $num2");
    return call(num1, num2);
  }
}
