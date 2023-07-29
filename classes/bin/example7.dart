void main(List<String> args) {
  print(Car._carInstantiated);
  Car('Toyota');
  print(Car._carInstantiated);
  Car('Suzuki');
  print(Car._carInstantiated);
}

class Car {
  static int _carInstantiated = 0;

  int get cardInstantiated => _carInstantiated;

  static void _incrementCarsInstantiated() => _carInstantiated++;

  final String name;
  Car(this.name) {
    _incrementCarsInstantiated();
  }
}
