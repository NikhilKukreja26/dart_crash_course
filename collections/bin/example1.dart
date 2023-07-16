void main(List<String> args) {
  const names = ['Nikhil', 'Simran', 'Sanket', 'Tej', 'Jatin'];

  for (final name in names) {
    print(name);
  }

  print('----------------------');

  for (final name in names.reversed) {
    print(name);
  }

  print('----------------------');

  if (names.contains('Tej')) {
    print('Tej is in the list');
  }

  print('----------------------');

  for (final name in names.where((name) => name.startsWith('S'))) {
    print(name);
  }

  print('----------------------');

  print(names[0]);
  print(names[1]);
  print(names[2]);
  print(names[3]);
  print(names[4]);

  print('----------------------');

  names.sublist(1).forEach(print);

  print('----------------------');

  names.sublist(1, 4).forEach(print);

  print('----------------------');

  names.sublist(2, 3).forEach(print);

  print('----------------------');

  final ages = [10, 20, 30, 40];
  ages.add(50);
  ages.add(60);
  print(ages);

  print('----------------------');

  const names1 = ['Foo', 'Bar', 'Baz', 'Qux'];
  const names2 = ['Foo', 'Bar', 'Baz', 'Qux'];

  if (names1 == names2) {
    print('names1 and names2 are equal');
  } else {
    print('names1 and names2 are not equal');
  }

  print('----------------------');

  names.map((str) => str.toUpperCase()).forEach(print);

  print('----------------------');

  names.map((str) => str.length).forEach(print);

  print('----------------------');

  const numbers = [1, 2, 3, 4, 5];
  int sum = 0;
  for (final number in numbers) {
    sum += number;
  }

  print(sum);

  print('----------------------');

  final total = numbers.fold(
    0,
    (
      previousValue,
      thisValue,
    ) =>
        previousValue + thisValue,
  );

  print(total);

  print('----------------------');

  final totalLength = names.fold(
    0,
    (
      totalLength,
      currentString,
    ) =>
        totalLength + currentString.length,
  );

  print(totalLength);

  print('----------------------');

  final result = names.fold(
    '',
    (
      result,
      str,
    ) =>
        '$result ${str.toUpperCase()}'.trim(),
  );

  print(result);

  print('----------------------');
}
