void main() {
  final car = Car();
  try {
    car.drive(speed: 10);
    car.drive(speed: -10);
  } catch (e) {
    print(e);
  }
}

class Car {
  int _speed = 0;
  int get speed => _speed;
  set speed(int newSpeed) {
    if (newSpeed < 0) {
      throw Exception('Speed cannot be smaller than 0');
    } else {
      _speed = newSpeed;
    }
  }

  void drive({required int speed}) {
    this.speed = speed;
    print('Accelarating with $speed');
  }

  void stop() {
    speed = 0;
    print('Stopping...');
  }
}
