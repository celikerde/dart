void main() {
  AnimalType.cat.jump();
  AnimalType.bird.jump();
  try {
    AnimalType.fish.jump();
  } catch (_) {
    print('Error was occured.');
  }
}

mixin CanJump {
  int get feetCount;
  void jump() {
    if (feetCount < 1) {
      throw Exception('Can not jump');
    } else {
      print('Jumped!');
    }
  }
}

enum AnimalType with CanJump {
  cat(feetCount: 4),
  bird(feetCount: 2),
  fish(feetCount: 0);

  @override
  final int feetCount;
  const AnimalType({required this.feetCount});
}
