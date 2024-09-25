void main() {
  final person = Person(name: 'Aziz', age: 23);
}

class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
  @override
  String toString() {
    return "Name is $name age is $age";
  }
}
