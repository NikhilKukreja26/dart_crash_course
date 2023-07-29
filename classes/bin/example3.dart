void main(List<String> args) {
  const v = Vehicle(wheelCount: 4);
  print(v);
  print(v.toString());

  print('-----------------------');

  print(const Car());

  print('-----------------------');

  print(const Bicycle());
}

class Vehicle {
  final int wheelCount;

  const Vehicle({
    required this.wheelCount,
  });

  @override
  String toString() {
    // if (runtimeType == Vehicle) {
    //   return 'Vehicle with $wheelCount wheels';
    // } else {
    //   return super.toString();
    // }
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  const Car() : super(wheelCount: 4);
}

class Bicycle extends Vehicle {
  const Bicycle() : super(wheelCount: 2);
}
