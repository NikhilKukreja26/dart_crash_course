void main(List<String> args) {
  final whiskers = AnimalType.cat;

  return switch (whiskers) {
    AnimalType.cat => print('This is a cat'),
    _ => print('This is not a cat'),
  };
}

enum AnimalType {
  dog,
  rabbit,
  cat,
  monkey,
}
