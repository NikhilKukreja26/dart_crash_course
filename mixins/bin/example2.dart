void main(List<String> args) {
  const person = Person(
    firstName: 'Nikhil',
    lastName: 'Kukreja',
  );
  print(person.fullName);
  print(getFullName(person));
}

String getFullName(HasFullName obj) => obj.fullName;

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  const Person({
    required this.firstName,
    required this.lastName,
  });
}
