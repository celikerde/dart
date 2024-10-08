void main() {
  final iterable = Iterable.generate(
    20,
    (i) => getName(i),
  );
  //print(iterable);
  for (final name in iterable.take(2)) {
    print(name);
  }
  print("--------");
  print(iterable);
}

String getName(int i) {
  print('Calling...');
  return 'John #$i';
}
