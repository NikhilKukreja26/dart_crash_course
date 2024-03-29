final json = {
  'name': 'Nikhil Kukreja',
  'age': 27,
};

void main(List<String> args) {
  final String? ageAsString = json.find<int>(
    'age',
    (int age) => age.toString(),
  );

  print(ageAsString);

  final String helloName = json.find<String>(
    'name',
    (String name) => 'Hello, $name!',
  )!;
  print(helloName);

  final String? address = json.find(
    'address',
    (String address) => 'You live it $address',
  );

  print('address = $address');
}

extension Find<K, V, R> on Map<K, V> {
  R? find<T>(
    K key,
    R? Function(T value) cast,
  ) {
    final value = this[key];
    if (value != null && value is T) {
      return cast(value as T);
    } else {
      return null;
    }
  }
}
