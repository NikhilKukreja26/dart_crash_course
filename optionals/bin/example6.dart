void main(List<String> args) {
  List<String?>? names = [];
  names.add('Nikhil');
  names.add(null);
  names = null;
  print(names);

  final String? first = names?.first;
  print(first ?? 'No first name found');

  names = [];
  names.add('Baz');
  names.add(null);
  print(names);
}
