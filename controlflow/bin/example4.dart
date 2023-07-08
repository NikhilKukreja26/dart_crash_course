void main(List<String> args) {
  const names = ['Nikhil', 'Sanket', 'Tej', 'Flora', 'Simran'];
  int counter = 0;
  while (counter < names.length) {
    print(names[counter]);
    counter++;
  }

  print('-------------');

  counter = -1;
  while (++counter < names.length) {
    print(names[counter]);
  }

  print('-------------');

  counter = names.length - 1;
  while (counter >= 0) {
    print(names[counter]);
    counter--;
  }

  print('-------------');

  counter = 0;
  do {
    print(names[counter]);
    counter++;
  } while (counter < names.length);

  print('-------------');

  counter = 0;
  do {
    if (counter == 2) {
      break;
    }
    print(names[counter]);
    counter++;
  } while (counter < names.length);

  print('-------------');

  counter = 0;
  do {
    final name = names[counter];
    counter++;
    // Nikhil Sanket
    if (name == 'Tej') {
      continue;
    }
    print(name);
  } while (counter < names.length);

  print('-------------');
}
