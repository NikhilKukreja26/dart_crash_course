void main(List<String> args) {
  final person = Person();
  print(person.age);
  print(person.description);
}

class Person {
  late String description = calculateHeavyDescription();
  final int age;

  Person({this.age = 18}) {
    print('Constructor is called');
  }

  String calculateHeavyDescription() {
    print('Function "heavyCalculationDescription" is called');
    return 'Foo Bar';
  }
}
