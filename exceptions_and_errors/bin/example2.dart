void main(List<String> args) {
  tryCreatingPerson(age: 27);
  tryCreatingPerson(age: -1);
  tryCreatingPerson(age: 150);
}

void tryCreatingPerson({int age = 0}) {
  try {
    print(Person(age: age).age);
  } on InvalidAgeException catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
  print('--------------------');
}

class InvalidAgeException implements Exception {
  final int age;
  final String message;

  InvalidAgeException(
    this.age,
    this.message,
  );

  @override
  String toString() => 'InvalidAgeException(message: $message, age: $age)';
}

class Person {
  final int age;

  Person({required this.age}) {
    if (age < 1) {
      throw InvalidAgeException(age, 'Age cannot be negative');
    } else if (age > 140) {
      throw InvalidAgeException(age, 'Age cannot be greater than 140');
    }
  }
}
