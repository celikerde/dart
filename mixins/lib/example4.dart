void main() {
  const Human().walk();
}

class Has2Feet {
  const Has2Feet();
}

class Human extends Has2Feet with CanRun {
  const Human();
}

mixin CanRun on Has2Feet {
  void walk() {
    print('$runtimeType is walking....');
  }
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}
