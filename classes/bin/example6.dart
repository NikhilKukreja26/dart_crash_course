void main(List<String> args) {
  final car = Car();
  try {
    car.drive(speed: 20);
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
      throw Exception('Speed cannot be negative');
    } else {
      _speed = newSpeed;
    }
  }

  void drive({
    required int speed,
  }) {
    this.speed = speed;
    print('Accelerating $speed km/h');
  }
}
