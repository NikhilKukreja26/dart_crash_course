void main(List<String> args) {
  print([1, 2, 3].containsDuplicatesValues);
  print([1, 2, 3, 1].containsDuplicatesValues);
  print(['Foo', 'Bar'].containsDuplicatesValues);
  print(['Foo', 'Bar', 'foo'].containsDuplicatesValues);
  print(['Foo', 'Bar', 'Foo'].containsDuplicatesValues);
}

extension ContainsDuplicates<T> on Iterable<T> {
  bool get containsDuplicatesValues => toSet().length != length;
}
