void main(List<String> args) {
  final person = Person(
    name: 'Nikhil',
    age: 27,
  );
  final person2 = person;

  final dog = Dog(
    name: 'Nikhil',
    age: 27,
  );

  print(identical(person, person2));
  print(person.hashCode);
  print(dog.hashCode);

  final begins = {person, person2, dog};
  print(begins);
  // final person2 = Person(
  //   name: 'Nikhil',
  //   age: 27,
  // );

  // print(person1.hashCode);
  // print(person2.hashCode);

  // final persons = {person1, person2};
  // print(persons);
}

class Person {
  final String name;
  final int age;

  Person({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && name == other.name && age == other.age;

  @override
  int get hashCode => Object.hash(name, age);

  @override
  String toString() => 'Person(name: $name, age: $age)';
}

class Dog {
  final String name;
  final int age;

  Dog({
    required this.name,
    required this.age,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Dog && name == other.name && age == other.age;

  @override
  int get hashCode => Object.hash(name, age);

  @override
  String toString() => 'Dog(name: $name, age: $age)';
}
