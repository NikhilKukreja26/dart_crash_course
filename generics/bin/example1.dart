void main(List<String> args) {
  final int intValue = eitherIntOrDouble();
  print(intValue);
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);
  // final String bla = eitherIntOrDouble();
  // print(bla);
}

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.2 as T;
    default:
      throw Exception('Not Supported');
  }
}
