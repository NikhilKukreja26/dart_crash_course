void main(List<String> args) {
  tryCreatingPerson(age: 27);
  tryCreatingPerson(age: -1);
  tryCreatingPerson(age: 150);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } catch (e) {
    print(e.runtimeType);
    print(e);
  }
  print('--------------------');
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 1) {
      throw Exception('Age must be positive');
    } else if (age > 140) {
      throw 'Age must be less than 140';
    }
  }
}
