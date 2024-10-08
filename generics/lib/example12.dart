void main() {
  final person1 = Person(age: 12);
  final person2 = Person(age: 12.4);
  print(person1.getRoundedAge);
  print(person2.getRoundedAge);
}

class Person<T extends num> {
  final T age;
  const Person({required this.age});
  int get getRoundedAge => age.round();
}
