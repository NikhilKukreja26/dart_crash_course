void main(List<String> args) {
  print({'name': 'Nikhil', 'age': 27} +
      {'address': 'Ulhasnagar', 'contact': 7507242108});
  print({'name': 'Nikhil', 'age': 27} - {'age': 27});
  print({'name': 'Nikhil', 'age': 27} * 2);
}

extension MapOperations<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};

  Map<K, V> operator -(Map<K, V> other) {
    return {...this}..removeWhere((key, value) {
        return other.containsKey(key) && other[key] == value;
      });
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield this;
    }
  }
}
