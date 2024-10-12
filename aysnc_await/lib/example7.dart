void main() async {
  await for (final number in numbers()) {
    print(number);
  }
  print("-------");
  await for (final number in numbers(f: isEvenNumber, end: 10)) {
    print(number);
  }
  print("--------");
  await for (final number in numbers(f: isOddNumber, end: 10)) {
    print(number);
  }
}

typedef IsIncluded = bool Function(int value);
bool isEvenNumber(int val) => val % 2 == 0;
bool isOddNumber(int val) => val % 2 != 0;

Stream<int> numbers({
  int start = 0,
  int end = 4,
  IsIncluded? f,
}) async* {
  for (var i = start; i < end; i++) {
    if (f == null || f(i)) {
      yield i;
    }
  }
}
