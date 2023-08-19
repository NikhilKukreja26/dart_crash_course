void main(List<String> args) {
  print(Person(age: 10).ageRounded);
  print(Person(age: 10.6).ageRounded);
}

class Person<T extends num> {
  final T age;

  const Person({
    required this.age,
  });

  int get ageRounded => age.round();

  @override
  String toString() => 'Person(age: $age)';
}
