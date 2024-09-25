void main() {
  final myAnimal = AnimalType.dog;
  switch (myAnimal) {
    case AnimalType.dog:
      print('It is a dog');
      break;
    default:
      print('It is not a dog');
      break;
  }
}

enum AnimalType {
  cat,
  dog,
  horse,
  rabbit,
}
