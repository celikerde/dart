void main() {
  print([1, 2, 3].containsDuplicateValues);
  print([1, 2, 3, 2, 1, 2].containsDuplicateValues);
  print(['Foo', 'Bar', 'Foo'].containsDuplicateValues);
}

extension on Iterable {
  bool get containsDuplicateValues => toSet().length != length;
}
