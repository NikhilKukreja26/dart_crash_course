void main(List<String> args) {
  final woof = Animal(
    name: 'Woof',
    type: AnimalType.cat,
  );

  if (woof.type == AnimalType.cat) {
    print('Woof is a cat');
  } else {
    print('Woof is not a cat');
  }

  return switch (woof.type) {
    AnimalType.dog => print('This is a dog'),
    AnimalType.rabbit => print('This a rabbit'),
    AnimalType.cat => print('This is a cat'),
  };
}

enum AnimalType {
  dog,
  cat,
  rabbit,
}

class Animal {
  final String name;
  final AnimalType type;

  const Animal({
    required this.name,
    required this.type,
  });
}
