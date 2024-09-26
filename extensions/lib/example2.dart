void main() {
  print([1, 2, 3, 4].sum);
  print([2.2, 3.3, 4.4].sum);
}

extension sumOfIterables<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
