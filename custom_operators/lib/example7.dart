void main() {
  final mom = Person(name: 'mom');
  final dad = Person(name: 'Dad');
  final son = Person(name: 'Son');
  final daughter = Person(name: 'Daughter');
  final pet = Pet(name: 'Haydar');

  final family = mom + dad;
  print(family);
  final familyWithCat = family & pet;
  print(familyWithCat);

  final withSon = familyWithCat + son;
  print(withSon);

  final sonWithCat = son & pet;
  print(sonWithCat);

  final additionTwoFamily = family ^ sonWithCat;
  print(additionTwoFamily);
}

class Person {
  final String name;
  const Person({required this.name});
  @override
  String toString() => "Person (name = $name)";
}

class Pet {
  final String name;
  const Pet({required this.name});
  @override
  String toString() => "Pet (name = $name)";
}

class Family {
  final List<Person> members;
  final List<Pet> pets;
  const Family({
    required this.members,
    required this.pets,
  });

  @override
  String toString() => "Family (members = $members pets = $pets)";
}

extension on Person {
  Family operator +(Person other) => Family(
        members: [this, other],
        pets: [],
      );

  Family operator &(Pet other) => Family(members: [this], pets: [other]);
}

extension on Family {
  Family operator &(Pet other) =>
      Family(members: members, pets: [...pets, other]);
  Family operator +(Person other) => Family(
        members: [...members, other],
        pets: pets,
      );
  Family operator ^(Family other) => Family(members: [
        ...members,
        ...other.members,
      ], pets: [
        ...pets,
        ...other.pets,
      ]);
}
