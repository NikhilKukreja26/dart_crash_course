void main(List<String> args) {
  final names = ['Nikhil', 'Sanket', 'Jatin', 'Tej', 'Flora'];
  print(names * 3);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield* this;
    }
  }
}
