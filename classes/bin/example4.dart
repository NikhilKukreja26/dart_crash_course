void main(List<String> args) {
  final person = Person(firstName: 'Nikhil', lastName: 'Kukreja');
  print(person.fullName);
}

class Person {
  final String firstName;
  final String lastName;
  String get fullName {
    print('fullName getter is called');
    return '$firstName $lastName';
  }

  const Person({
    required this.firstName,
    required this.lastName,
  });
}


// class Person {
//   final String firstName;
//   final String lastName;
//   final String fullName;

//   const Person({
//     required this.firstName,
//     required this.lastName,
//   }) : fullName = '$firstName $lastName';
// }
