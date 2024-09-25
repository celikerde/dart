void main() {
  final erdem = Person(name: 'Erdem', car: Car.teslaModelX);
  switch (erdem.car) {
    case Car.teslaModelX:
      print('Erdem has a teslaModelX -> ${erdem.car}');
      break;
    case Car.teslaModelY:
      print('Erdem has a teslaModelY -> ${erdem.car}');
      break;
  }
}

class Person {
  final String name;
  final Car car;

  Person({
    required this.name,
    required this.car,
  });
}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2022,
  );

  final String manufacturer;
  final String model;
  final int year;

  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });
  @override
  String toString() => 'Car $manufacturer $model $year';
}
