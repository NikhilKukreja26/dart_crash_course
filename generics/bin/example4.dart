void main(List<String> args) {
  final one = KeyValue(1, 2);
  print(one);
  final two = KeyValue(1, 2.2); // MapEntry<int, double>
  print(two);
  final three = KeyValue(1, 'Foo'); // MapEntry<int, String>
  print(three);
  final KeyValue four = KeyValue(1, 2); // MapEntry<dynamic, dynamic>
  print(four);
}

typedef KeyValue<K, V> = MapEntry<K, V>;
