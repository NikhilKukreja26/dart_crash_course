import 'package:collection/collection.dart';

void main(List<String> args) {
  testBoolList();
  print('-------------');
  testCanonicalizedMap();
  print('-------------');
  testCombinedIterableView();
  print('-------------');
  testCombinedListView();
  print('-------------');
  testCombinedMapView();
  print('-------------');
  testMapsMerge();
  print('-------------');
}

void testBoolList() {
  final boolList = BoolList(
    10,
    growable: true,
  );
  print(boolList);
  boolList[3] = true;

  if (boolList[3]) {
    print('The boolean value at index 3 is true');
  } else {
    print('The boolean value at index 3 is false');
  }

  boolList.length *= 2;
  print(boolList);
}

void testCanonicalizedMap() {
  final info = {
    'name': 'Nikhil Kukreja',
    'age': 27,
    'sex': 'Male',
    'address': 'Mumbai'
  };

  final cannonMap = CanonicalizedMap.from(
    info,
    (key) {
      // return key.length;
      return key.split('').first;
    },
  );

  print(cannonMap);
}

void testCombinedIterableView() {
  final Iterable<int> one = [10, 20, 30];
  final two = [40, 50, 60];
  final Iterable<int> three = [80, 90, 100];

  final combined = CombinedIterableView([
    one,
    two,
    three,
  ]);

  two.add(70);
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(50));
  print(combined.contains(5));
}

void testCombinedListView() {
  // CombinedListView is a view of a list of lists, and is unmodifiable

  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Pierre'];

  final names = CombinedListView([
    swedishNames,
    norwegianNames,
    frenchNames,
  ]);

  swedishNames.removeAt(0);

  print(names);
  if (names.contains('Sven')) {
    print('Sven is in the list');
  }

  try {
    names.removeAt(0);
  } catch (e) {
    print(e);
  }
}

void testCombinedMapView() {
  final map1 = {'a': 10, 'b': 20, 'c': 30};
  final map2 = {'d': 40, 'e': 50, 'f': 60};
  final map3 = {'g': 70, 'h': 80, 'i': 90};

  final combinedMap = CombinedMapView({
    map1,
    map2,
    map3,
  });

  map1['a'] = 100;
  print(combinedMap);
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']);
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);
  print(combinedMap['g']);
  print(combinedMap['h']);
  print(combinedMap['i']);
  print(combinedMap['j']);

  try {
    combinedMap['a'] = 100;
  } catch (e) {
    print(e);
  }
}

void testMapsMerge() {
  final info1 = {'name': 'Nikhil Kukreja 1', 'age': 20, 'height': 5.10};

  final info2 = {
    'name': 'Nikhil Kukreja 1',
    'age': 27,
    'height': 5.10,
    'weight': 90,
  };

  final mergeMap = mergeMaps(
    info1,
    info2,
    value: (one, two) => one,
  );

  print(mergeMap);
}
