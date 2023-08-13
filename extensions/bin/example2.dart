void main(List<String> args) {
  print([1, 2, 3, 4, 5].sum);
  print([27.7, 23.9, 26.9, 5.5].sum);
}

extension SumOfIterable<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}
