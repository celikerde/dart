void main() {
  final myCats = <Cat>{
    Cat(age: 1, name: 'fasuli'),
    Cat(age: 2, name: 'elma'),
    Cat(age: 1, name: 'fasuli'),
  };
  myCats.forEach(print);
  print(myCats.length);
}

enum PetType {
  dog,
  fish,
  cat,
}

mixin Pet {
  String get name;
  int get age;
  PetType get petType;

  @override
  String toString() {
    return "$name $age $petType";
  }

  @override
  // TODO: implement hashCode
  int get hashCode => Object.hash(
        name,
        age,
        petType,
      );
  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}

class Cat with Pet {
  @override
  // TODO: implement age
  final int age;

  @override
  // TODO: implement name
  final String name;

  @override
  // TODO: implement petType
  final PetType petType;

  Cat({required this.age, required this.name}) : petType = PetType.cat;
}
