void main() {
  print([1, 2, 3] - [2]);
  print([1, 2, 3] - [3, 1, 2]);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) {
    return where((element) => !other.contains(element));
  }
}
