import 'package:uuid/uuid.dart';

void main() {
  final uuid1 = Uuid().v4();
  final uuid2 = Uuid().v4();

  final person1 = Person(
    name: 'Erdem',
    age: 23,
    id: uuid1,
  );

  final person1Again = Person(
    name: 'erdem',
    age: 23,
    id: uuid1,
  );

  final person2 = Person(
    name: 'Erdem',
    age: 23,
    id: uuid2,
  );

  if (person1 == person2) {
    print('Person1 and Person 2 are Equal');
  } else {
    print('Person1 and Person 2 are not Equal');
  }

  if (person1 == person1Again) {
    print('Person1 and Person1Again are Equal');
  } else {
    print('Person1 and Person1Again are not Equal');
  }

  if (person1Again == person2) {
    print('Person1Again and Person2 are Equal');
  } else {
    print('Person1Again and Person2 are not Equal');
  }
}

mixin HasIdentifier {
  String get id;
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HasIdentifier &&
          runtimeType == other.runtimeType &&
          id == other.id;
}

class Person with HasIdentifier {
  @override
  final String id;

  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
    required this.id,
  });
}
