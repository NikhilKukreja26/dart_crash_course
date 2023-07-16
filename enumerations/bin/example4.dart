void main(List<String> args) {
  describe(animalType(fromStr: 'dog'));
  describe(animalType(fromStr: 'cat'));
  describe(animalType(fromStr: 'monkey'));
  describe(animalType(fromStr: 'rabbit'));
  describe(animalType(fromStr: 'horse'));
}

void describe(AnimalType? animalType) {
  return switch (animalType) {
    AnimalType.dog => print('This is a dog'),
    AnimalType.rabbit => print('This is a rabbit'),
    AnimalType.cat => print('This is a cat'),
    AnimalType.monkey => print('This is a monkey'),
    _ => print('Unknown animal'),
  };
}

AnimalType? animalType({required fromStr}) {
  try {
    return AnimalType.values.firstWhere((animal) => animal.name == fromStr);
  } catch (e) {
    return null;
  }
}

enum AnimalType {
  dog,
  rabbit,
  cat,
  monkey,
}
