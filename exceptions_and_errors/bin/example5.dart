void main(List<String> args) {
  try {
    print('Dog aged 11 is going to run');
    Dog(
      age: 11,
      isTired: false,
    ).run();
  } catch (e) {
    print(e);
  }

  try {
    print('A tired dog is going to run..');
    Dog(
      age: 2,
      isTired: true,
    ).run();
  } catch (e) {
    print(e);
  }
}

class Throws<T> {
  final List<T> exceptions;

  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();

  @override
  String toString() => 'DogIsTooOldException()';
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();

  @override
  String toString() => 'DogIsTiredException()';
}

class Animal {
  final int age;
  const Animal({
    required this.age,
  });

  @override
  String toString() => 'Animal(age: $age)';

  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;
  const Dog({
    required super.age,
    required this.isTired,
  });

  @Throws([DogIsTooOldException, DogIsTiredException])
  @override
  void run() {
    if (age > 10) {
      throw const DogIsTooOldException();
    } else if (isTired) {
      throw const DogIsTiredException();
    } else {
      print('Dog is running....');
    }
  }
}
