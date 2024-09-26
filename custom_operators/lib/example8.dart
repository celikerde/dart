void main() {
  final person = Person(age: 23);
  final afterThreeYears = person + 3;
  print(afterThreeYears);
}

class Person {
  final int age;
  const Person({required this.age});

  Person operator +(int age) {
    return Person(age: this.age + age);
  }

  @override
  String toString() => "Person (age) is $age";
}
