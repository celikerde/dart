void main() {
  const names = ['Erdem', 'Ahmet', 'Besim', 'Recai'];
  final threeTimeNames = names * 3;
  print(threeTimeNames);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield* this;
    }
  }
}
