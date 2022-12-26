void main(List<String> args) {
  const name = 'Foo';
  print(name);

  // Invalid code
  // name = 'Hello';
}
// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'