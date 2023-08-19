void main(List<String> args) {
  final tuple = Tuple(1, 20);
  print(tuple.sum);
  final swapped = tuple.swap();
  print(swapped.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;

  const Tuple(
    this.left,
    this.right,
  );

  @override
  String toString() => 'Tuple(left: $left, right: $right)';
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple<R, L>(right, left);
}

extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}
