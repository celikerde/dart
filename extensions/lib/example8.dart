void main() {
  const person = Person(
    name: 'Ahmet',
    age: 46,
  );
  print(ShortDescription(person).description);
  print(LongDescription(person).description);
}

class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });
}

//short desc
extension ShortDescription on Person {
  String get description => "$name and $age";
}

//long desc
extension LongDescription on Person {
  String get description => "$name is and $age years old";
}
