void main(List<String> args) {
  const mom = Mom(); // Constructor are not inherited by default
  print(mom.role);
  const dad = Dad();
  print(dad.role);
}

enum Role { mom, dad, son, daughter, grandpa, grandma }

class Person {
  final Role role;

  const Person({
    required this.role,
  });
}

class Mom extends Person {
  const Mom() : super(role: Role.mom);
}

class Dad extends Person {
  const Dad() : super(role: Role.dad);
}
