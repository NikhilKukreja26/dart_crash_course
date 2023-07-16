import 'dart:collection';

void main(List<String> args) {
  const notFound = 'NOT_FOUND';
  const defaultValue = 'DEFAULT_VALUE';
  final myList = SafeList(
    absentValue: notFound,
    defaultValue: defaultValue,
    values: ['Nikhil', 'Simran'],
  );

  print(myList[0]);
  print(myList[1]);
  print(myList[2]);
  print(myList[3]);

  myList.length = 4;
  print(myList);

  myList.length = 0;
  print(myList.first);
  print(myList.last);
}

class SafeList<T> extends ListBase<T> {
  final T absentValue;
  final T defaultValue;
  List<T> _list;

  SafeList({
    required this.absentValue,
    required this.defaultValue,
    List<T>? values,
  }) : _list = values ?? [];

  @override
  int get length => _list.length;

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(
        List.filled(
          newLength - _list.length,
          defaultValue,
        ),
      );
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isNotEmpty ? _list.last : absentValue;
}
