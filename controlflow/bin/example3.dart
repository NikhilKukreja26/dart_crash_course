void main(List<String> args) {
  const names = ['Nikhil', 'Sanket', 'Tej', 'Flora', 'Simran'];

  for (final name in names) {
    print(name);
  }

  print('-------------');

  for (final name in names) {
    if (name.startsWith('S')) {
      continue;
    }
    print(name);
  }

  print('-------------');

  for (final name in names) {
    if (name == 'Tej') {
      break;
    }
    print(name);
  }

  print('-------------');

  for (final name in names) {
    if (name == 'Flora') {
      continue;
    }
    print(name);
  }

  print('-------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('-------------');

  for (final int value in Iterable.generate(20)) {
    print(value);
  }

  print('-------------');
}
