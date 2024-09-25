void main() {
  AnimalType.dog.run();
  AnimalType.dog.jump();
  AnimalType.cat.run();
  AnimalType.cat.jump();
}

enum AnimalType {
  cat,
  dog,
  rabbit;

  void run() {
    print("$this is running");
  }
}

extension Jump on AnimalType {
  void jump() {
    print("$this is jumping");
  }
}
