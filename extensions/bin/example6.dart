void main(List<String> args) {
  print(AnimalType.cat.containsUpperCaseLetters);
  print(AnimalType.dog.containsUpperCaseLetters);
  print(AnimalType.goldFish.containsUpperCaseLetters);
}

enum AnimalType {
  dog,
  cat,
  goldFish,
}

extension on Enum {
  bool get containsUpperCaseLetters => name.contains(RegExp(r'[A-Z]'));
}
