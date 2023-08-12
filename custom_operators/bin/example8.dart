void main(List<String> args) {
  final meThisYear = Person(age: 27);
  print('Me this year is = $meThisYear');
  final meNextYear = meThisYear + 1;
  print('Me next year is = $meNextYear');
}

class Person {
  final int age;

  const Person({
    required this.age,
  });

  Person operator +(int age) => Person(age: this.age + age);

  @override
  String toString() => 'Person(age: $age)';
}
