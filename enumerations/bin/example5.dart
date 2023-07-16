void main(List<String> args) {
  final vehicle = Vehicle.car;

  switch (vehicle) {
    case Vehicle.motorcycle:
    case Vehicle.bicycle:
    case Vehicle.car:
      print('Most common personal vehicle');
    case Vehicle.truck:
      print('Usually used for work');
  }
}

enum Vehicle {
  truck,
  car,
  motorcycle,
  bicycle,
}
