void main() {
  final person1 = Person(name: 'Erdem', age: 28);
  final person2 = Person(name: 'Erdem', age: 28);
  if (person1 == person2) {
    print('Same');
  } else {
    print('Not same');
  }
  print(person1.hashCode);
  print(person2.hashCode);
  final persons = {person1, person2};
  print(persons);
  final dog = Dog(name: 'Erdem', age: 28);
  print(person1.hashCode);
  print(dog.hashCode);
  final personAndDog = {person1, dog, person2};
  print(personAndDog);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => "Person: $name, $age";

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  String toString() => "Dog: $name, $age";

  @override
  int get hashCode => Object.hash(name, age);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;
}
