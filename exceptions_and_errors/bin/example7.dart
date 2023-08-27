void main(List<String> args) {
  Dog(isTired: false).run();
  try {
    Dog(isTired: true).run();
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
}

class DogIsTiredException implements Exception {
  final String message;
  const DogIsTiredException([this.message = 'Poor doggy is tired']);

  @override
  String toString() => 'DogIsTiredException(message: $message)';
}

class Dog {
  final bool isTired;
  const Dog({
    required this.isTired,
  });

  void run() {
    if (isTired) {
      throw const DogIsTiredException();
    } else {
      print('Dog is running....');
    }
  }
}
