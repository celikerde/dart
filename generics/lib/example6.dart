void main() {
  const person = Person(height: 1);
  print(person.height);
}

mixin HasHeight<T extends num> {
  T get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasIntHeight {
  @override
  final int height;
  const Person({required this.height});
}
