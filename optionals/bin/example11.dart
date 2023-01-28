void main(List<String> args) {
  print(getFullName(null, null));
  print(getFullName('Nikhil', null));
  print(getFullName(null, 'Kukreja'));
  print(getFullName('Nikhil', 'Kukreja'));
}

String getFullName(String? firstName, String? lastName) =>
    withAll(
      [firstName, lastName],
      (names) => names.join(' '),
    ) ??
    'Empty';

T? withAll<T>(
  List<T?> optionals,
  T Function(List<T>) callback,
) =>
    optionals.any((e) => e == null) ? null : callback(optionals.cast<T>());
