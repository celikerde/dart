void main() {
  print(Vehicle.car());
  print(Vehicle.truck());
}

class Vehicle {
  const Vehicle();
  factory Vehicle.car() => const Car();
  factory Vehicle.truck() => const Truck();
  @override
  String toString() {
    return 'Vehicle type is : $runtimeType';
  }
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
