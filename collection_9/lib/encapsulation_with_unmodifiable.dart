import 'dart:collection';

void main() {
  final person = Person(name: 'Foo', siblings: [
    Person(
      name: 'Bar',
    ),
  ]);
  try {
    person.siblings?.add(
      Person(name: 'Baz'),
    );
  } catch (e) {
    print(e);
  }
}

class Person {
  final String? name;
  final List<Person>? _siblings;
  const Person({
    required this.name,
    List<Person>? siblings,
  }) : _siblings = siblings;
  UnmodifiableListView<Person>? get siblings =>
      _siblings == null ? null : UnmodifiableListView(_siblings);
}
