void main(List<String> args) {
  final foo = doSomething(20, 10);
  print(foo());
  // print(doSomething(40, 20)()); // ! Do do this
}

int Function() doSomething(int a, int b) => () => a + b;
