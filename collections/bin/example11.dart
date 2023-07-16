void main(List<String> args) {
  for (final name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('Producing Nikhil');
  yield 'Nikhil';
  print('Producing Simran');
  yield 'Simran';
  print('Producing Tej');
  yield 'Tej';
  print('Producing TemplateNames');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('Producing Sanket');
  yield 'Sanket';
  print('Producing Flora');
  yield 'Flora';
  print('Producing Alka');
  yield 'Alka';
}
