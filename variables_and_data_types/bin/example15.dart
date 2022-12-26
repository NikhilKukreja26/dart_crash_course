void main(List<String> args) {
  const int someInteger = 10;
  print(someInteger);
  const double someDouble = 10.5;
  print(someDouble);
  const someString = 'Hello';
  print(someString);
  const someBoolean = true;
  print(!someBoolean);
  const List<int> someList = [1, 2, 3];
  print(someList);
  const Map<String, String> someMap = {'foo': 'bar'};
  print(someMap);
  const Set<int> someSet = {1, 2, 3};
  print(someSet);
  const dynamic someNull = null;
  print(someNull);
  const Symbol someSymbol = #someNull;
  print(someSymbol);
}
