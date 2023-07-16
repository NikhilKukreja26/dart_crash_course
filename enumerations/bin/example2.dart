void main(List<String> args) {
  final nikhil = Person(
    name: 'Nikhil',
    car: Car.teslaModelx,
  );

  return switch (nikhil.car) {
    Car.teslaModelx => print('Nikhil has a Tesla Model X = ${nikhil.car}'),
    Car.teslaModely => print('Nikhil has a Tesla Model Y = ${nikhil.car}'),
  };
}

class Person {
  final String name;
  final Car car;

  const Person({
    required this.name,
    required this.car,
  });

  @override
  String toString() => 'Person(name: $name, car: $car)';
}

enum Car {
  teslaModelx(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),
  teslaModely(
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
  String toString() =>
      'Car(manufacturer: $manufacturer, model: $model, year: $year)';
}
