void main(List<String> args) {
  addArrayToWrong();
  print('----------------');
  addArrayToRight();
  print('----------------');
  addDictionaryWrong();
  print('----------------');
  addDictionaryRight();
  print('----------------');
}

void addArrayToWrong() {
  final names1 = ['Nikhil', 'Tej', 'Sanket'];
  final names2 = ['Flora', 'Jatin', 'Simran'];
  final allNamesWrong = names1;
  allNamesWrong.addAll(names2);
  print(names1);
  print(names2);
  print(allNamesWrong);
}

void addArrayToRight() {
  final names1 = ['Nikhil', 'Tej', 'Sanket'];
  final names2 = ['Flora', 'Jatin', 'Simran'];
  final allNamesRight = [...names1, ...names2];
  print(names1);
  print(names2);
  print(allNamesRight);
  // final anotherWay = [...names1]..addAll(names2); // Not Recommended
  // print(anotherWay);
}

void addDictionaryWrong() {
  const info = {
    'name': 'Nikhil',
    'age': 27,
    'height': 5.10,
  };

  final result = info;
  try {
    result.addAll({'weight': 90});
    print(result);
  } catch (e) {
    print(e);
  }
}

void addDictionaryRight() {
  const info = {
    'name': 'Nikhil',
    'age': 27,
    'height': 5.10,
  };

  final result = {...info}..addAll({'weight': 90});
  print(result);
}
