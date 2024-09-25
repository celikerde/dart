void main() {
  final car = Car();
  car.drive(speed: 20);
  print(car.speed);
  car.drive(speed: 58);
  print(car.speed);
  car.stop();
  print(car.speed);
}

class Car {
  int speed = 0;
  void drive({required int speed}) {
    this.speed = speed;
    print('Accelarating...');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
  }
}
