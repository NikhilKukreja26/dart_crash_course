void main(List<String> args) {
  makeUpperCase();
  makeUpperCase(null);
  makeUpperCase('Nikhil');
  makeUpperCase('Nikhil', 'Kukreja');
  // makeUpperCase('Nikhil', null);
  makeUpperCase(null, 'Kukreja');
}

void makeUpperCase([
  String? name,
  String lastName = 'Kukreja',
]) {
  print(name?.toUpperCase());
  print(lastName.toUpperCase());
}
