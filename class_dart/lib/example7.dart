void main() {
  final foo = Person();
  //foo.name = 'Foo';
  Person.name = 'Foo';
  print(Person.name);
  print("-------------");
  print(Car.carInstantiated);
  Car(name: 'esefsf');
  print(Car.carInstantiated);
  Car(name: 'fsef');
  print(Car.carInstantiated);
}

class Person {
  static String name = "";
}

class Car {
  static int _carInstantiated = 0;
  static int get carInstantiated => _carInstantiated;
  static void _incrementCars() => _carInstantiated++;
  final String name;
  Car({required this.name}) {
    _incrementCars();
  }
}
