void main(List<String> args) {
  final string = 'abracadabra';

  // String result = '';

  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     result += char;
  //   }
  // }
  // print(result);

  final allExceptAbc = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();
  print(allExceptAbc);

  final allNumbers = Iterable.generate(100, (index) => index);

  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];

  final evenNumbersFunctional = allNumbers.where(
    (number) => number % 2 == 0,
  );

  final oddNumbers = [
    for (final number in allNumbers)
      if (number % 2 != 0) number
  ];

  final oddNumbersFunctional = allNumbers.where(
    (number) => number % 2 != 0,
  );

  print(evenNumbers);
  print('------------');
  print(evenNumbersFunctional);
  print('------------');
  print(oddNumbers);
  print('------------');
  print(oddNumbersFunctional);
  print('------------');

  final names = {
    'Nikhil Kukreja',
    'Sanket Sakpal',
    'Tej Malkani',
    'Simran Kukreja',
    'Flora Saini',
    'Jatin Kataria',
  };

  final namesAndLength = {
    for (final name in names) name: name.length,
  };
  print(namesAndLength);
}
