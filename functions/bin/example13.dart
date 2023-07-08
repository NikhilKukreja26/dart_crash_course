void main(List<String> args) {
  describeFully('Nikhil');
  describeFully('Nikhil', lastName: null);
  describeFully('Nikhil', lastName: 'K');
}

void describeFully(
  String firstName, {
  String? lastName = 'Kukreja',
}) {
  print('Hello, $firstName $lastName');
}
