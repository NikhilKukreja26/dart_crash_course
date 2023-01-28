void main(List<String> args) {
  String? firstName = 'Nikhil';
  String? lastName = 'Kukreja';

  final fullName = firstName.flatMap(
        (f) => lastName.flatMap(
          (l) => '$f $l',
        ),
      ) ??
      'Either first or last name or both are null';

  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatMap<R>(R? Function(T) callback) {
    if (this == null) {
      return null;
    } else {
      return callback(this as T);
    }
  }
}
