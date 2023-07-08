void main(List<String> args) {
  describePerson();
  describePerson(age: 26);
  describePerson(name: 'Nikhil');
  describePerson(name: 'Nikhil', age: 26);
  describePerson(age: 26, name: 'Nikhil');
}

void describePerson({
  String? name,
  int? age,
}) {
  print('Hello $name, you are $age years old.');
}
