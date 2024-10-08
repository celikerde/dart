void main() {
  final person = Person(age: 12);
  print(person);
  person.age = 0;
  print(person);
  try {
    person.age = -1;
  } catch (e) {
    print(e);
  } finally {
    print(person);
  }
}

class Person {
  int _age;
  Person({required int age}) : _age = age;
  int get age => _age;
  set age(int val) {
    if (val < 0) {
      throw ArgumentError("Age cannot be negative");
    } else {
      _age = val;
    }
  }

  @override
  String toString() => "Person (age = $age)";
}
