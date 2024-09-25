void main() {
  final myAnimal = Animal(
    name: 'Boncuk',
    animalType: AnimalType.bird,
  );
  if (myAnimal.animalType == AnimalType.dog) {
    print('It is a dog');
  } else {
    print('Not dog');
  }

  switch (myAnimal.animalType) {
    case AnimalType.rabbit:
      print('This is a rabbit');
      break;
    case AnimalType.dog:
      print('This is a dog');
      break;
    case AnimalType.donkey:
      print('This is a donkey');
      break;
    case AnimalType.bird:
      print('This is a bird');
      break;
    case AnimalType.monkey:
      print('This is a monkey');
      break;
  }
}

enum AnimalType {
  rabbit,
  dog,
  donkey,
  bird,
  monkey,
}

class Animal {
  final String name;
  final AnimalType animalType;

  const Animal({
    required this.name,
    required this.animalType,
  });
}
