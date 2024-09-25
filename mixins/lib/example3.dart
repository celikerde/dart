void main() {
  final cat = Cat(age: 4);
  print(cat.age);
  cat.incrementAge();
  print(cat.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age = 0;

  Cat({required this.age});
}
