void main(List<String> args) {
  doSomethingWith();
  doSomethingWith(name: 'Nikhil');
}

void doSomethingWith({
  String name = 'Bar',
}) {
  print('Hello, $name!');
}
