void main() {
  final myVehicle = Vehicle(wheelCount: 4);
  print(myVehicle.toString());
  print("--------");
  print(Car());
  print(Bicycle());
}

class Vehicle {
  final int wheelCount;
  const Vehicle({required this.wheelCount});
  @override
  String toString() {
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  const Car() : super(wheelCount: 4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(wheelCount: 2);
}
