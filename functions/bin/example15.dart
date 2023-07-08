void main(List<String> args) {
  print(minus());
  print(minus(30, 20));
  print(minus(20, 30));

  print(performOperation(10, 20, add));
  print(performOperation(40, 20, minus));
}

int performOperation(int a, int b, int Function(int, int) operation) =>
    operation(a, b);

int minus([int lhs = 30, int rhs = 10]) => lhs - rhs;
int add([int lhs = 30, int rhs = 10]) => lhs + rhs;
