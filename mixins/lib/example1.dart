void main() {
  final person = Person();
  person.jump(speed: 12);
  person.walk(speed: 8);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    this.speed = speed;
    print("$runtimeType is jumping at speed $speed");
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    this.speed = speed;
    print("$runtimeType is walking at speed $speed");
  }
}

class Person with HasSpeed, CanWalk, CanJump {
  @override
  double speed;
  Person() : speed = 0.0;
}
