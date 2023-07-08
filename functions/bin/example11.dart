void main(List<String> args) {
  // these are all invalid
  // sayGoodbyeTo();
  // sayGoodbyeTo('Foo');
  sayGoodbyeTo('Foo', 'Bar');
  sayGoodbyeTo('Baz', 'Bar');
}

void sayGoodbyeTo(
  String person,
  String anotherPerson,
) {
  print('Goodbye, $person and $anotherPerson!');
}
