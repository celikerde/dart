void main() {
  final vehicle = VehicleType.truck;
  switch (vehicle) {
    case VehicleType.car:
    case VehicleType.motorcycle:
    case VehicleType.bicycle:
      print('Most commmon used vehicle types');
      break;
    case VehicleType.truck:
      print('Usually used for work');
  }
}

enum VehicleType { car, truck, motorcycle, bicycle }
