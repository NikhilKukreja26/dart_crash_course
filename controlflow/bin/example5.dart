void main(List<String> args) {
  describe(1);
  describe(2.5);
  describe(true);
  describe('Hello');
  describe({'key': 'value'});
  describe([1, 2, 3]);
}

void describe<T>(T value) {
  switch (T) {
    case int:
      print('This is an Integer');

    case double:
      print('This is an Double');

    case bool:
      print('This is an Bool');

    case String:
      print('This is an String');

    case const (Map<String, String>):
      print('This is an Map');

    default:
      print('This is an Something else');
  }
}
