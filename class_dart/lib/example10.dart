void main() {
  const car = Car();
  print(car.vKind);
  car.accelarate();
  car.decelarate();
  const bicycle = Bicycle();
  print(bicycle.vKind);
  bicycle.accelarate();
  bicycle.decelarate();
}

abstract class Vehicle {
  final VehicleKind vKind;
  const Vehicle({required this.vKind});
  void accelarate() => print("$vKind is accelerating.");
  void decelarate() => print('$vKind is decelerating');
}

class Car extends Vehicle {
  const Car() : super(vKind: VehicleKind.car);
}

class Bicycle implements Vehicle {
  const Bicycle();
  @override
  void accelarate() => print('Bicycle is accelerating');

  @override
  void decelarate() => print('Bicycle is decelerating');

  @override
  VehicleKind get vKind => VehicleKind.bicycle;
}

enum VehicleKind {
  car,
  truck,
  boat,
  bicycle,
}
