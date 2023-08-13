void main(List<String> args) {
  const nikhil = Person(
    name: 'Nikhil',
    age: 27,
  );

  print(ShortDescription(nikhil).description);
  print(LongDescription(nikhil).description);
}

class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  @override
  String toString() => 'Person(name: $name, age: $age)';
}

extension ShortDescription on Person {
  String get description => '$name age is $age';
}

extension LongDescription on Person {
  String get description => '$name is $age years old';
}
