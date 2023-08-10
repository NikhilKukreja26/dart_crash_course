void main(List<String> args) {
  final cats = <Cat>{
    Cat(age: 2, name: 'Kitty 1'),
    Cat(age: 3, name: 'Kitty 2'),
    Cat(age: 2, name: 'Kitty 1'),
  };

  cats.forEach(print);
}

enum PetType { cat, dog }

mixin Pet {
  String get name;
  int get age;
  PetType get type;

  @override
  String toString() => 'Pet(name: $name, age: $age, type: $type)';

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;

  @override
  int get hashCode => Object.hash(name, age, type);
}

class Cat with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;
  const Cat({
    required this.age,
    required this.name,
  }) : type = PetType.cat;
}
