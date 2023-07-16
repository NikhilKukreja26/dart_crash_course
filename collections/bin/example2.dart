import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {
    'Nikhil',
    'Sanket',
    'Tej',
    'Flora',
  };

  names.add('Tej');
  print(names);

  print('-----------------------');

  final names2 = ['Nikhil', 'Sanket', 'Tej', 'Flora', 'Tej'];
  final uniqueNames = {...names2};
  print(names2);
  print(uniqueNames);

  print('-----------------------');

  final foo1 = 'Foo';
  var foo2 = 'Foo';
  print(foo1.hashCode);
  print(foo2.hashCode);

  print('-----------------------');

  if (names2.contains('Tej')) {
    print('Found Tej');
  } else {
    print('Did not find Tej');
  }

  print('-----------------------');

  final ages1 = {20, 30, 50, 40};
  final ages2 = {20, 30, 40, 50};

  if (ages1 == ages2) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('-----------------------');

  if (SetEquality().equals(ages1, ages2)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('-----------------------');

  final ages3 = {30, 20, 40, 50};

  if (SetEquality().equals(ages1, ages3)) {
    print('Ages are equal');
  } else {
    print('Ages are not equal');
  }

  print('-----------------------');
}
